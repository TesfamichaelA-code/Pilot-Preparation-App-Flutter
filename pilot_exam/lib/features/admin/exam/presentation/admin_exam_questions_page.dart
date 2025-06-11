import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../application/exam_notifier.dart';
import '../domain/entities/create_question_request.dart';
import 'admin_add_question_page.dart';

class AdminExamQuestionsPage extends ConsumerStatefulWidget {
  final String examId;
  final String examTitle;
  const AdminExamQuestionsPage({required this.examId, required this.examTitle, Key? key}) : super(key: key);

  @override
  ConsumerState<AdminExamQuestionsPage> createState() => _AdminExamQuestionsPageState();
}

class _AdminExamQuestionsPageState extends ConsumerState<AdminExamQuestionsPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(examNotifierProvider.notifier).getQuestionsByExamId(widget.examId));
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(examNotifierProvider);
    return Scaffold(
      backgroundColor: const Color(0xFF375569),
      appBar: AppBar(
        backgroundColor: const Color(0xFF375569),
        title: Text('Questions for ${widget.examTitle}', style: const TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdminAddQuestionPage(examId: widget.examId),
                ),
              );
            },
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator(color: Colors.white))
          : state.questions == null || state.questions!.isEmpty
              ? const Center(child: Text('No questions found.', style: TextStyle(color: Colors.white)))
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: state.questions!.length,
                  itemBuilder: (context, index) {
                    final q = state.questions![index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 24),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFF375569),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '${index + 1}. ',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      TextSpan(
                                        text: q.text,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.edit, color: Colors.white),
                                onPressed: () async {
                                  final edited = await showDialog<CreateQuestionRequest>(
                                    context: context,
                                    builder: (context) => QuestionEditDialog(
                                      initialQuestion: CreateQuestionRequest(
                                        text: q.text,
                                        options: q.options,
                                        correctAnswer: q.correctAnswer,
                                        explanation: q.explanation,
                                      ),
                                    ),
                                  );
                                  if (edited != null) {
                                    await ref.read(examNotifierProvider.notifier).updateQuestion(widget.examId, q.id, edited);
                                    await ref.read(examNotifierProvider.notifier).getQuestionsByExamId(widget.examId);
                                  }
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete, color: Colors.white),
                                onPressed: () async {
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
                                    await ref.read(examNotifierProvider.notifier).deleteQuestion(widget.examId, q.id);
                                    await ref.read(examNotifierProvider.notifier).getQuestionsByExamId(widget.examId);
                                  }
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Column(
                            children: q.options.asMap().entries.map((opt) {
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
                            }).toList(),
                          ),
                          if (q.explanation.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
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