import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../application/question_notifier.dart';
import '../domain/entities/exam.dart';
import 'exam_review_page.dart';
import '../application/exam_progress_notifier.dart';
import '../application/exam_progress_state.dart';

class ExamQuestionPage extends ConsumerStatefulWidget {
  final String examId;
  final String examTitle;
  final int durationMinutes;

  const ExamQuestionPage({
    Key? key,
    required this.examId,
    required this.examTitle,
    required this.durationMinutes,
  }) : super(key: key);

  @override
  ConsumerState<ExamQuestionPage> createState() => _ExamQuestionPageState();
}

class _ExamQuestionPageState extends ConsumerState<ExamQuestionPage> {
  Timer? _timer;
  int _remainingSeconds = 0;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = widget.durationMinutes * 60;
    _startTimer();
    Future.microtask(() {
      ref.read(questionNotifierProvider.notifier).getQuestions(widget.examId);
    });
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _remainingSeconds--;
        } else {
          _timer?.cancel();
          _submitExam();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String _formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _submitExam() async {
    final state = ref.read(questionNotifierProvider);
    if (state.questions == null || state.selectedAnswers == null) return;

    final unansweredCount = state.selectedAnswers!.where((answer) => answer == null).length;
    if (unansweredCount > 0) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: const Color(0xFF375569),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text(
            'Incomplete Exam',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            'Please answer all questions before submitting. You have $unansweredCount questions remaining.',
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.white.withOpacity(0.2),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('OK'),
            ),
          ],
        ),
      );
      return;
    }
    await _submitExamToApi();
  }

  Future<void> _submitExamToApi() async {
    final state = ref.read(questionNotifierProvider);
    final answers = state.selectedAnswers?.map((e) => e ?? -1).toList();
    if (answers == null) return;
    await ref.read(examProgressNotifierProvider.notifier).submitExam(
      examId: widget.examId,
      answers: answers,
    );
    final progressState = ref.read(examProgressNotifierProvider);
    if (progressState.error != null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: const Color(0xFF375569),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text(
            'Submission Error',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            progressState.error!,
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white70,
              ),
              child: const Text('OK'),
            ),
          ],
        ),
      );
      return;
    }
    if (progressState.progress != null) {
      Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ExamReviewPage(
            examId: widget.examId,
            answers: answers,
            totalQuestions: state.questions!.length,
            // Optionally pass progressState.progress for richer review
        ),
      ),
    );
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(questionNotifierProvider);
    final progressState = ref.watch(examProgressNotifierProvider);

    if (state.isLoading) {
      return const Scaffold(
        backgroundColor: Color(0xFF375569),
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      );
    }

    if (state.error != null) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Error: ${state.error}',
                style: const TextStyle(color: Colors.red),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.read(questionNotifierProvider.notifier)
                     .getQuestions(widget.examId);
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }

    if (state.questions == null || state.questions!.isEmpty) {
      return Scaffold(
        backgroundColor: const Color(0xFF375569),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: const Center(
          child: Text(
            'No questions available',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
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
        title: Row(
          children: [
            Expanded(
              child: Text(
                widget.examTitle,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                _formatTime(_remainingSeconds),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(16, 10, 16, 80),
                itemCount: state.questions!.length,
                itemBuilder: (context, questionIndex) {
                  final question = state.questions![questionIndex];
                  final isSelected = state.selectedAnswers?[questionIndex] != null;
                  final selectedAnswer = state.selectedAnswers?[questionIndex];

                  return Card(
                    margin: const EdgeInsets.only(bottom: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: const Color(0xFF375569),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${questionIndex + 1}. ${question.text}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: question.options.length,
                            itemBuilder: (context, optionIndex) {
                              final isOptionSelected = selectedAnswer == optionIndex;
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: InkWell(
                                  onTap: () {
                                    ref.read(questionNotifierProvider.notifier)
                                       .selectAnswer(questionIndex, optionIndex);
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: isOptionSelected ? Colors.white : Colors.white54,
                                            width: 2,
                                          ),
                                        ),
                                        child: isOptionSelected
                                            ? const Center(
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  radius: 6,
                                                ),
                                              )
                                            : null,
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: Text(
                                          '${String.fromCharCode(65 + optionIndex)}) ${question.options[optionIndex]}',
                                          style: TextStyle(
                                            color: isOptionSelected ? Colors.white : Colors.white70,
                                            fontSize: 16,
                                            fontWeight: isOptionSelected ? FontWeight.w500 : FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF375569),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, -2),
            ),
          ],
          ),
          child: ElevatedButton(
          onPressed: progressState.isLoading ? null : _submitExam,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color(0xFF375569),
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 0,
            ),
          child: progressState.isLoading
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Color(0xFF375569),
                    strokeWidth: 2.5,
                  ),
                )
              : const Text(
              'Submit',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
} 