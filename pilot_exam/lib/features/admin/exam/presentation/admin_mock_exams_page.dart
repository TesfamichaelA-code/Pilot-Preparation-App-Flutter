import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../application/exam_notifier.dart';
import '../../../admin/exam/domain/entities/create_exam_request.dart';
import '../../../../shared/widgets/app_bottom_nav.dart';
import '../../homepage/presentation/admin_home_page.dart';
import '../../exam/presentation/admin_exam_edit_page.dart';
import '../../exam/presentation/admin_exam_questions_page.dart';

const List<String> examCategories = [
  'pilotTrainee',
  'flightInstructor',
];
const List<String> difficulties = [
  'easy',
  'medium',
  'hard',
];

class AdminMockExamsPage extends ConsumerStatefulWidget {
  const AdminMockExamsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AdminMockExamsPage> createState() => _AdminMockExamsPageState();
}

class _AdminMockExamsPageState extends ConsumerState<AdminMockExamsPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  final _durationController = TextEditingController(text: '60');
  String _selectedCategory = examCategories[0];
  String _selectedDifficulty = difficulties[1];
  bool _isActive = true;

  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(examNotifierProvider.notifier).getAllExams());
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    _durationController.dispose();
    super.dispose();
  }

  void _showCreateExamDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF46647A),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text('Create Mock Exam', style: TextStyle(color: Colors.white)),
        content: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                  validator: (value) => value == null || value.isEmpty ? 'Enter title' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _descController,
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
                  validator: (value) => value == null || value.isEmpty ? 'Enter description' : null,
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
                  items: examCategories
                      .map((cat) => DropdownMenuItem(
                            value: cat,
                            child: Text(cat == 'pilotTrainee' ? 'Pilot Trainee' : 'Flight Instructor', style: const TextStyle(color: Colors.white)),
                          ))
                      .toList(),
                  onChanged: (val) {
                    if (val != null) setState(() => _selectedCategory = val);
                  },
                  validator: (value) => value == null || value.isEmpty ? 'Select category' : null,
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
                  items: difficulties
                      .map((diff) => DropdownMenuItem(
                            value: diff,
                            child: Text(diff[0].toUpperCase() + diff.substring(1), style: const TextStyle(color: Colors.white)),
                          ))
                      .toList(),
                  onChanged: (val) {
                    if (val != null) setState(() => _selectedDifficulty = val);
                  },
                  validator: (value) => value == null || value.isEmpty ? 'Select difficulty' : null,
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
                  validator: (value) => value == null || value.isEmpty ? 'Enter duration' : null,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Text('Is Active', style: TextStyle(color: Colors.white)),
                    const Spacer(),
                    Switch(
                      value: _isActive,
                      onChanged: (val) => setState(() => _isActive = val),
                      activeColor: Colors.white,
                      activeTrackColor: Colors.purple,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                Navigator.pop(context);
                final request = CreateExamRequest(
                  title: _titleController.text,
                  description: _descController.text,
                  category: _selectedCategory,
                  difficulty: _selectedDifficulty,
                  durationMinutes: int.tryParse(_durationController.text) ?? 60,
                  isActive: _isActive,
                );
                await ref.read(examNotifierProvider.notifier).createExam(request);
              }
            },
            child: const Text('Create', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _confirmDeleteExam(BuildContext context, String examId) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Exam'),
        content: const Text('Are you sure you want to delete this exam?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              await ref.read(examNotifierProvider.notifier).deleteExam(examId);
            },
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
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
        backgroundColor: const Color(0xFF375569),
        automaticallyImplyLeading: false,
        title: const Text(
          'Mock Exams',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.add),
            onPressed: () => _showCreateExamDialog(context),
          ),
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.search),
            onPressed: () {}, // Add search logic if needed
          ),
        ],
      ),
      body: examState.isLoading
          ? const Center(child: CircularProgressIndicator(color: Colors.white))
          : examState.error != null
              ? Center(
                  child: Text(
                    examState.error!,
                    style: const TextStyle(color: Colors.red, fontSize: 16),
                  ),
                )
              : RefreshIndicator(
                  onRefresh: () => ref.read(examNotifierProvider.notifier).getAllExams(),
                  child: (examState.exams != null && examState.exams!.isNotEmpty)
                      ? GridView.builder(
                          padding: const EdgeInsets.all(16),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: 0.70,
                          ),
                          itemCount: examState.exams!.length,
                          itemBuilder: (context, index) {
                            final exam = examState.exams![index];
                            final year = exam.createdAt.year;
                            return _AdminExamCard(
                              title: exam.title,
                              year: year,
                              onEdit: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AdminExamEditPage(exam: exam),
                                  ),
                                );
                              },
                              onDelete: () => _confirmDeleteExam(context, exam.id),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AdminExamQuestionsPage(
                                      examId: exam.id,
                                      examTitle: exam.title,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        )
                      : const Center(
                          child: Text(
                            'No exams created yet.',
                            style: TextStyle(color: Colors.white70, fontSize: 16),
                          ),
                        ),
                ),
      bottomNavigationBar: AppBottomNav(
        currentIndex: 1, // Exam tab
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const AdminHomePage()),
            );
          }
        },
      ),
    );
  }
}

class _AdminExamCard extends StatelessWidget {
  final String title;
  final int year;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final VoidCallback? onTap;

  const _AdminExamCard({
    required this.title,
    required this.year,
    required this.onEdit,
    required this.onDelete,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: const RoundedRectangleBorder(),
      child: InkWell(
        onTap: onTap ?? onEdit,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              color: const Color(0xFF375569),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      'Ethiopian Airlines',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '$year',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/images/airplane.jpg',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.3),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              color: const Color(0xFF375569),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Are you ready?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Begin your exam!',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.white),
                        onPressed: onEdit,
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.white),
                        onPressed: onDelete,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}