import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/entities/create_interview_question_request.dart';
import '../application/interview_notifier.dart';

class AdminInterviewPreviewPage extends ConsumerStatefulWidget {
  final List<CreateInterviewQuestionRequest> questions;
  const AdminInterviewPreviewPage({Key? key, required this.questions}) : super(key: key);

  @override
  ConsumerState<AdminInterviewPreviewPage> createState() => _AdminInterviewPreviewPageState();
}

class _AdminInterviewPreviewPageState extends ConsumerState<AdminInterviewPreviewPage> {
  late List<CreateInterviewQuestionRequest> _questions;

  @override
  void initState() {
    super.initState();
    _questions = List.from(widget.questions);
  }

  void _editQuestionDialog(int index) {
    final questionController = TextEditingController(text: _questions[index].question);
    final answerController = TextEditingController(text: _questions[index].sampleAnswer);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF46647A),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text('Edit Interview', style: TextStyle(color: Colors.white)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: questionController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Question',
                labelStyle: const TextStyle(color: Colors.white70),
                filled: true,
                fillColor: const Color(0xFF375569),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: answerController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Sample Answer',
                labelStyle: const TextStyle(color: Colors.white70),
                filled: true,
                fillColor: const Color(0xFF375569),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _questions[index] = _questions[index].copyWith(
                  question: questionController.text,
                  sampleAnswer: answerController.text,
                );
              });
              Navigator.pop(context);
            },
            child: const Text('Save', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _deleteQuestionDialog(int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Interview'),
        content: const Text('Are you sure you want to delete this interview question?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _questions.removeAt(index);
              });
              Navigator.pop(context);
            },
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final interviewState = ref.watch(interviewNotifierProvider);
    final notifier = ref.read(interviewNotifierProvider.notifier);

    Future<void> uploadAll() async {
      for (final q in _questions) {
        await notifier.createInterviewQuestion(q);
        if (ref.read(interviewNotifierProvider).error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(ref.read(interviewNotifierProvider).error!),
              backgroundColor: Colors.red,
            ),
          );
          return;
        }
      }
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('All questions uploaded!'), backgroundColor: Colors.green),
      );
      Navigator.pop(context);
    }

    return Scaffold(
      backgroundColor: const Color(0xFF375569),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          'Ethiopian Airlines',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: interviewState.isLoading
          ? const Center(child: CircularProgressIndicator(color: Colors.white))
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _questions.length,
              itemBuilder: (context, index) {
                final q = _questions[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF46647A),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  '${index + 1}.  ${q.question}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.edit, color: Colors.white),
                                onPressed: () => _editQuestionDialog(index),
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete, color: Colors.white),
                                onPressed: () => _deleteQuestionDialog(index),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // TODO: Show sample answer
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: const Color(0xFF375569),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  elevation: 0,
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                ),
                                child: const Text('Sample', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        color: const Color(0xFF375569),
        child: ElevatedButton(
          onPressed: _questions.isNotEmpty && !interviewState.isLoading ? uploadAll : null,
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
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
} 