import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/widgets/app_bottom_nav.dart';
import '../domain/entities/create_interview_question_request.dart';
import 'admin_interview_preview_page.dart';

class AdminInterviewsPage extends ConsumerStatefulWidget {
  const AdminInterviewsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AdminInterviewsPage> createState() => _AdminInterviewsPageState();
}

class _AdminInterviewsPageState extends ConsumerState<AdminInterviewsPage> {
  final _formKey = GlobalKey<FormState>();
  final _questionController = TextEditingController();
  final _answerController = TextEditingController();
  String _selectedCategory = 'situational'; // Default category
  String _selectedDifficulty = 'medium'; // Default difficulty
  List<CreateInterviewQuestionRequest> _questions = [];
  int? _editingIndex;

  @override
  void dispose() {
    _questionController.dispose();
    _answerController.dispose();
    super.dispose();
  }

  void _addOrSaveInterview() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        if (_editingIndex == null) {
          _questions.add(
            CreateInterviewQuestionRequest(
              question: _questionController.text,
              sampleAnswer: _answerController.text,
              category: _selectedCategory,
              difficulty: _selectedDifficulty,
              tipsForAnswering: '',
              yearAsked: DateTime.now().year,
            ),
          );
        } else {
          _questions[_editingIndex!] = CreateInterviewQuestionRequest(
            question: _questionController.text,
            sampleAnswer: _answerController.text,
            category: _selectedCategory,
            difficulty: _selectedDifficulty,
            tipsForAnswering: '',
            yearAsked: DateTime.now().year,
          );
          _editingIndex = null;
        }
        _questionController.clear();
        _answerController.clear();
        _selectedCategory = 'situational'; // Reset to default
        _selectedDifficulty = 'medium'; // Reset to default
      });
    }
  }

  void _goToPreview() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AdminInterviewPreviewPage(questions: _questions),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF375569),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Ethiopian Airlines',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
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
                  const Text('Question', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _questionController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Interview question',
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: const Color(0xFF375569),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: (value) => value == null || value.isEmpty ? 'Enter question' : null,
                  ),
                  const SizedBox(height: 16),
                  const Text('Sample Answer', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _answerController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Sample Answer',
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: const Color(0xFF375569),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: (value) => value == null || value.isEmpty ? 'Enter sample answer' : null,
                                      ),
                  const SizedBox(height: 16),
                  // Category Dropdown
                  const Text('Category', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    value: _selectedCategory,
                    style: const TextStyle(color: Colors.white),
                    dropdownColor: const Color(0xFF375569),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFF375569),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    items: const [
                      DropdownMenuItem(value: 'technical', child: Text('Technical', style: TextStyle(color: Colors.white))),
                      DropdownMenuItem(value: 'behavioral', child: Text('Behavioral', style: TextStyle(color: Colors.white))),
                      DropdownMenuItem(value: 'situational', child: Text('Situational', style: TextStyle(color: Colors.white))),
                      DropdownMenuItem(value: 'pilotSpecific', child: Text('Pilot Specific', style: TextStyle(color: Colors.white))),
                      DropdownMenuItem(value: 'flightInstructor', child: Text('Flight Instructor', style: TextStyle(color: Colors.white))),
                    ],
                    onChanged: (val) {
                      if (val != null) setState(() => _selectedCategory = val);
                    },
                  ),
                  const SizedBox(height: 16),
                  // Difficulty Dropdown
                  const Text('Difficulty', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    value: _selectedDifficulty,
                    style: const TextStyle(color: Colors.white),
                    dropdownColor: const Color(0xFF375569),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFF375569),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    items: const [
                      DropdownMenuItem(value: 'easy', child: Text('Easy', style: TextStyle(color: Colors.white))),
                      DropdownMenuItem(value: 'medium', child: Text('Medium', style: TextStyle(color: Colors.white))),
                      DropdownMenuItem(value: 'hard', child: Text('Hard', style: TextStyle(color: Colors.white))),
                    ],
                    onChanged: (val) {
                      if (val != null) setState(() => _selectedDifficulty = val);
                    },
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _addOrSaveInterview,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: const Color(0xFF375569),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 0,
                          ),
                          child: Text(_editingIndex == null ? 'Add Interview' : 'Save', style: const TextStyle(fontWeight: FontWeight.bold)),
                                ),
                            ),
                      const SizedBox(width: 12),
                                ElevatedButton(
                        onPressed: _questions.isNotEmpty ? _goToPreview : null,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: const Color(0xFF375569),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    elevation: 0,
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  ),
                        child: const Text('Next'),
                                ),
                              ],
                            ),
                          ],
                        ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: AppBottomNav(
        currentIndex: 2,
            onTap: (index) {},
      ),
    );
  }
} 