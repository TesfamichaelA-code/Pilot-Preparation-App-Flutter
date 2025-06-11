import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/entities/exam.dart';
import '../domain/entities/create_exam_request.dart';
import '../application/exam_notifier.dart';

class AdminExamEditPage extends ConsumerStatefulWidget {
  final Exam exam;
  const AdminExamEditPage({Key? key, required this.exam}) : super(key: key);

  @override
  ConsumerState<AdminExamEditPage> createState() => _AdminExamEditPageState();
}

class _AdminExamEditPageState extends ConsumerState<AdminExamEditPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _durationController;
  late String _selectedCategory;
  late String _selectedDifficulty;
  late bool _isActive;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.exam.title);
    _descriptionController = TextEditingController(text: widget.exam.description);
    _durationController = TextEditingController(text: widget.exam.durationMinutes.toString());
    _selectedCategory = widget.exam.category;
    _selectedDifficulty = widget.exam.difficulty;
    _isActive = widget.exam.isActive;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _durationController.dispose();
    super.dispose();
  }

  void _updateExam() async {
    if (_formKey.currentState!.validate()) {
      final request = CreateExamRequest(
        title: _titleController.text,
        description: _descriptionController.text,
        category: _selectedCategory,
        difficulty: _selectedDifficulty,
        durationMinutes: int.tryParse(_durationController.text) ?? 60,
        isActive: _isActive,
      );

      await ref.read(examNotifierProvider.notifier).updateExam(widget.exam.id, request);
      if (mounted) {
        Navigator.pop(context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final examState = ref.watch(examNotifierProvider);

    // Show SnackBar on error
    if (examState.error != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text(
                examState.error!,
                style: const TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.red,
            ),
          );
        ref.read(examNotifierProvider.notifier).clearError();
      });
    }

    return Scaffold(
      backgroundColor: const Color(0xFF375569),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Edit Exam - ${widget.exam.title}',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Card(
            color: const Color(0xFF46647A),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: _titleController,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Title',
                        labelStyle: const TextStyle(color: Colors.white70),
                        filled: true,
                        fillColor: const Color(0xFF375569),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      validator: (value) => value?.isEmpty ?? true ? 'Title is required' : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _descriptionController,
                      style: const TextStyle(color: Colors.white),
                      maxLines: 3,
                      decoration: InputDecoration(
                        labelText: 'Description',
                        labelStyle: const TextStyle(color: Colors.white70),
                        filled: true,
                        fillColor: const Color(0xFF375569),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      validator: (value) => value?.isEmpty ?? true ? 'Description is required' : null,
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: _selectedCategory,
                      style: const TextStyle(color: Colors.white),
                      dropdownColor: const Color(0xFF375569),
                      decoration: InputDecoration(
                        labelText: 'Category',
                        labelStyle: const TextStyle(color: Colors.white70),
                        filled: true,
                        fillColor: const Color(0xFF375569),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      items: const [
                        DropdownMenuItem(value: 'pilotTrainee', child: Text('Pilot Trainee', style: TextStyle(color: Colors.white))),
                        DropdownMenuItem(value: 'flightInstructor', child: Text('Flight Instructor', style: TextStyle(color: Colors.white))),
                      ],
                      onChanged: (value) {
                        if (value != null) {
                          setState(() => _selectedCategory = value);
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: _selectedDifficulty,
                      style: const TextStyle(color: Colors.white),
                      dropdownColor: const Color(0xFF375569),
                      decoration: InputDecoration(
                        labelText: 'Difficulty',
                        labelStyle: const TextStyle(color: Colors.white70),
                        filled: true,
                        fillColor: const Color(0xFF375569),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      items: const [
                        DropdownMenuItem(value: 'easy', child: Text('Easy', style: TextStyle(color: Colors.white))),
                        DropdownMenuItem(value: 'medium', child: Text('Medium', style: TextStyle(color: Colors.white))),
                        DropdownMenuItem(value: 'hard', child: Text('Hard', style: TextStyle(color: Colors.white))),
                      ],
                      onChanged: (value) {
                        if (value != null) {
                          setState(() => _selectedDifficulty = value);
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _durationController,
                      style: const TextStyle(color: Colors.white),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Duration (minutes)',
                        labelStyle: const TextStyle(color: Colors.white70),
                        filled: true,
                        fillColor: const Color(0xFF375569),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      validator: (value) => value?.isEmpty ?? true ? 'Duration is required' : null,
                    ),
                    const SizedBox(height: 16),
                    SwitchListTile(
                      title: const Text('Is Active', style: TextStyle(color: Colors.white)),
                      value: _isActive,
                      onChanged: (value) => setState(() => _isActive = value),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: examState.isLoading ? null : _updateExam,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF375569),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: examState.isLoading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF375569)),
                                ),
                              )
                            : const Text(
                                'Update Exam',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
} 