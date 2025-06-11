import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../application/exam_notifier.dart';
import '../domain/entities/create_question_request.dart';
import 'admin_question_review_page.dart';

class AdminAddQuestionPage extends ConsumerStatefulWidget {
  final String examId;
  final CreateQuestionRequest? questionToEdit;
  final int? editIndex;
  const AdminAddQuestionPage({required this.examId, this.questionToEdit, this.editIndex, Key? key}) : super(key: key);

  @override
  ConsumerState<AdminAddQuestionPage> createState() => _AdminAddQuestionPageState();
}

class _AdminAddQuestionPageState extends ConsumerState<AdminAddQuestionPage> {
  final _formKey = GlobalKey<FormState>();
  final _questionController = TextEditingController();
  final _optionAController = TextEditingController();
  final _optionBController = TextEditingController();
  final _optionCController = TextEditingController();
  final _optionDController = TextEditingController();
  final _explanationController = TextEditingController();
  int _selectedAnswer = 0;
  final List<CreateQuestionRequest> _questions = [];

  @override
  void initState() {
    super.initState();
    if (widget.questionToEdit != null) {
      _questionController.text = widget.questionToEdit!.text;
      _optionAController.text = widget.questionToEdit!.options[0];
      _optionBController.text = widget.questionToEdit!.options[1];
      _optionCController.text = widget.questionToEdit!.options[2];
      _optionDController.text = widget.questionToEdit!.options[3];
      _selectedAnswer = widget.questionToEdit!.correctAnswer;
      _explanationController.text = widget.questionToEdit!.explanation;
    }
  }

  @override
  void dispose() {
    _questionController.dispose();
    _optionAController.dispose();
    _optionBController.dispose();
    _optionCController.dispose();
    _optionDController.dispose();
    _explanationController.dispose();
    super.dispose();
  }

  void _addOrEditQuestion() {
    if (_formKey.currentState!.validate()) {
      final question = CreateQuestionRequest(
        text: _questionController.text,
        options: [
          _optionAController.text,
          _optionBController.text,
          _optionCController.text,
          _optionDController.text,
        ],
        correctAnswer: _selectedAnswer,
        explanation: _explanationController.text,
      );
      if (widget.editIndex != null) {
        // Editing: return result to review page
        Navigator.pop(context, {'question': question, 'index': widget.editIndex});
      } else {
        setState(() {
          _questions.add(question);
          _questionController.clear();
          _optionAController.clear();
          _optionBController.clear();
          _optionCController.clear();
          _optionDController.clear();
          _explanationController.clear();
          _selectedAnswer = 0;
        });
      }
    }
  }

  void _goToReviewPage() {
    if (_questions.isEmpty && widget.editIndex == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Add at least one question before reviewing.')),
      );
      return;
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AdminQuestionReviewPage(
          examId: widget.examId,
          questions: _questions,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF375569),
      appBar: AppBar(
        backgroundColor: const Color(0xFF375569),
        title: const Text('Add Question', style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 400,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF46627A),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Question',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _questionController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFF375569),
                      hintText: 'mock exam question',
                      hintStyle: const TextStyle(color: Colors.white70),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    validator: (v) => v == null || v.isEmpty ? 'Enter question' : null,
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'options',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ...List.generate(4, (i) {
                    final controllers = [
                      _optionAController,
                      _optionBController,
                      _optionCController,
                      _optionDController,
                    ];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Row(
                        children: [
                          Radio<int>(
                            value: i,
                            groupValue: _selectedAnswer,
                            onChanged: (val) {
                              setState(() => _selectedAnswer = val!);
                            },
                            activeColor: Colors.green,
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: controllers[i],
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xFF375569),
                                hintText: 'choice ${String.fromCharCode(65 + i)}',
                                hintStyle: const TextStyle(color: Colors.white70),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                              ),
                              validator: (v) => v == null || v.isEmpty ? 'Enter option' : null,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                  const SizedBox(height: 18),
                  const Text(
                    'Explanation',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _explanationController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFF375569),
                      hintText: 'The answer is... because',
                      hintStyle: const TextStyle(color: Colors.white70),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    ),
                    minLines: 3,
                    maxLines: 4,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _addOrEditQuestion,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: const Color(0xFF375569),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            widget.editIndex != null ? 'Save' : 'Add',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      SizedBox(
                        width: 70,
                        child: ElevatedButton(
                          onPressed: _goToReviewPage,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: const Color(0xFF375569),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
} 