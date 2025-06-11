import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../application/question_notifier.dart';
import 'exams_page.dart';

class ExamReviewPage extends ConsumerWidget {
  final String examId;
  final List<int?> answers;
  final int totalQuestions;

  const ExamReviewPage({
    Key? key,
    required this.examId,
    required this.answers,
    required this.totalQuestions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(questionNotifierProvider);
    final questions = state.questions;
    
    if (questions == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final answeredQuestions = answers.where((answer) => answer != null).length;
    final unansweredQuestions = totalQuestions - answeredQuestions;
    final results = ref.read(questionNotifierProvider.notifier).getResults();

    return Scaffold(
      backgroundColor: const Color(0xFF375569),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Exam Review',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: const Color(0xFF375569),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'Results',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      _buildStatRow('Total Questions', totalQuestions.toString()),
                      _buildStatRow('Answered Questions', answeredQuestions.toString()),
                      _buildStatRow('Unanswered Questions', unansweredQuestions.toString()),
                      _buildStatRow(
                        'Correct Answers',
                        results.where((result) => result).length.toString(),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Review your answers and explanations below.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // List all question reviews
              ...questions.asMap().entries.map((entry) {
                final index = entry.key;
                final question = entry.value;
                final userAnswer = index < answers.length ? answers[index] : null;
                final isCorrect = userAnswer == question.correctAnswer;

                return Column(
                  children: [
                    Card(
                      margin: const EdgeInsets.only(bottom: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      color: const Color(0xFF375569),
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${index + 1}. ${question.text}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 16),
                            if (userAnswer != null) ...[
                              Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: isCorrect ? Colors.green : Colors.red,
                                        width: 2,
                                      ),
                                    ),
                                    child: isCorrect
                                        ? const Center(
                                            child: Icon(
                                              Icons.check,
                                              size: 14,
                                              color: Colors.green,
                                            ),
                                          )
                                        : const Center(
                                            child: Icon(
                                              Icons.close,
                                              size: 14,
                                              color: Colors.red,
                                            ),
                                          ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'Your answer: ${String.fromCharCode(65 + userAnswer)} - ${question.options[userAnswer]}',
                                    style: TextStyle(
                                      color: isCorrect ? Colors.green : Colors.red,
                                      fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              if (!isCorrect) ...[
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    const SizedBox(width: 28),
                                    Expanded(
                                      child: Text(
                                        'Correct answer: ${String.fromCharCode(65 + question.correctAnswer)} - ${question.options[question.correctAnswer]}',
                                        style: const TextStyle(
                                          color: Colors.green,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                    ),
                                  ],
                              ],
                              const SizedBox(height: 16),
                            const Text(
                              'Explanation:',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                fontWeight: FontWeight.w500,
                                ),
                              ),
                            const SizedBox(height: 8),
                            Text(
                              question.explanation,
                              style: const TextStyle(
                                color: Colors.white70,
                                  fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
              const SizedBox(height: 24),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const ExamsPage()),
                      (route) => false,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF375569),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                  ),
                  icon: const Icon(Icons.arrow_back, size: 20),
                  label: const Text(
                    'Exams',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
} 