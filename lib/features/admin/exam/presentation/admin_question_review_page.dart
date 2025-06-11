import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../application/exam_notifier.dart';
import '../domain/entities/create_question_request.dart';

class AdminQuestionReviewPage extends ConsumerStatefulWidget {
  final String examId;
  final List<CreateQuestionRequest> questions;
  const AdminQuestionReviewPage({required this.examId, required this.questions, Key? key}) : super(key: key);

  @override
  ConsumerState<AdminQuestionReviewPage> createState() => _AdminQuestionReviewPageState();
}

class _AdminQuestionReviewPageState extends ConsumerState<AdminQuestionReviewPage> {
  late List<CreateQuestionRequest> _questions;

  @override
  void initState() {
    super.initState();
    _questions = List.from(widget.questions);
  }

  Future<void> _uploadQuestions(BuildContext context, WidgetRef ref) async {
    final notifier = ref.read(examNotifierProvider.notifier);
    for (final q in _questions) {
      await notifier.createQuestion(widget.examId, q);
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Questions uploaded successfully!')),
    );
    Navigator.pop(context);
    Navigator.pop(context);
  }

  void _deleteQuestion(int index) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Question'),
        content: const Text('Are you sure you want to delete this question?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
    if (confirm == true) {
      setState(() {
        _questions.removeAt(index);
      });
    }
  }

  void _editQuestion(int index) async {
    final edited = await showDialog<CreateQuestionRequest>(
      context: context,
      builder: (context) => QuestionEditDialog(initialQuestion: _questions[index]),
    );
    if (edited != null) {
      setState(() {
        _questions[index] = edited;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF375569),
      appBar: AppBar(
        backgroundColor: const Color(0xFF375569),
        title: const Text('Review Questions', style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF46627A),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListView.builder(
                  itemCount: _questions.length,
                  itemBuilder: (context, index) {
                    final q = _questions[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  '${index + 1}. ${q.text}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.edit, color: Colors.white),
                                onPressed: () => _editQuestion(index),
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete, color: Colors.white),
                                onPressed: () => _deleteQuestion(index),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          ...q.options.asMap().entries.map((opt) {
                            final isCorrect = opt.key == q.correctAnswer;
                            return Row(
                              children: [
                                Radio<int>(
                                  value: opt.key,
                                  groupValue: q.correctAnswer,
                                  onChanged: null,
                                  activeColor: isCorrect ? Colors.green : Colors.red,
                                ),
                                Text(
                                  '${String.fromCharCode(65 + opt.key)}) ${opt.value}',
                                  style: TextStyle(
                                    color: isCorrect ? Colors.green : Colors.white,
                                    fontWeight: isCorrect ? FontWeight.bold : FontWeight.normal,
                                  ),
                                ),
                              ],
                            );
                          }),
                          if (q.explanation.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                'Explanation: ${q.explanation}',
                                style: const TextStyle(color: Colors.white70, fontStyle: FontStyle.italic),
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: _questions.isNotEmpty
                    ? () => _uploadQuestions(context, ref)
                    : null,
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
                  'Upload',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionEditDialog extends StatefulWidget {
  final CreateQuestionRequest initialQuestion;
  const QuestionEditDialog({required this.initialQuestion, Key? key}) : super(key: key);

  @override
  State<QuestionEditDialog> createState() => _QuestionEditDialogState();
}

class _QuestionEditDialogState extends State<QuestionEditDialog> {
  late TextEditingController _questionController;
  late TextEditingController _optionAController;
  late TextEditingController _optionBController;
  late TextEditingController _optionCController;
  late TextEditingController _optionDController;
  late TextEditingController _explanationController;
  late int _selectedAnswer;

  @override
  void initState() {
    super.initState();
    _questionController = TextEditingController(text: widget.initialQuestion.text);
    _optionAController = TextEditingController(text: widget.initialQuestion.options[0]);
    _optionBController = TextEditingController(text: widget.initialQuestion.options[1]);
    _optionCController = TextEditingController(text: widget.initialQuestion.options[2]);
    _optionDController = TextEditingController(text: widget.initialQuestion.options[3]);
    _explanationController = TextEditingController(text: widget.initialQuestion.explanation);
    _selectedAnswer = widget.initialQuestion.correctAnswer;
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

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFF46627A),
      title: const Text('Edit Question', style: TextStyle(color: Colors.white)),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Question', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            TextField(
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
            ),
            const SizedBox(height: 12),
            const Text('options', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...List.generate(4, (i) {
              final controllers = [
                _optionAController,
                _optionBController,
                _optionCController,
                _optionDController,
              ];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
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
                      child: TextField(
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
                      ),
                    ),
                  ],
                ),
              );
            }),
            const SizedBox(height: 12),
            const Text('Explanation', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            TextField(
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
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel', style: TextStyle(color: Colors.white)),
        ),
        ElevatedButton(
          onPressed: () {
            final edited = CreateQuestionRequest(
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
            Navigator.pop(context, edited);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: const Color(0xFF375569),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 0,
          ),
          child: const Text('Save', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
} 