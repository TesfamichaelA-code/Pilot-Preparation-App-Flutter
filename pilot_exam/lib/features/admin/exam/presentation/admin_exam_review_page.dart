import 'package:flutter/material.dart';

class AdminExamReviewPage extends StatelessWidget {
  final int year;
  const AdminExamReviewPage({Key? key, required this.year}) : super(key: key);

  // Mock questions for review
  final List<Map<String, dynamic>> _mockQuestions = const [
    {
      'question': 'What comes next in the series? 2, 4, 8, 16, __',
      'options': ['18', '20', '24', '32'],
      'correctAnswer': 3,
    },
    {
      'question': 'Ethiopian Airlines has the ___ number of flights in Africa.',
      'options': ['high', 'higher', 'highest', 'most high'],
      'correctAnswer': 2,
    },
  ];

  @override
  Widget build(BuildContext context) {
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
          'Ethiopian Airlines exam- Year $year',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ..._mockQuestions.asMap().entries.map((entry) {
                  final index = entry.key;
                  final question = entry.value;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${index + 1}. ${question['question']}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 12),
                        ...List.generate(4, (i) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: [
                              Icon(
                                i == question['correctAnswer']
                                  ? Icons.radio_button_checked
                                  : Icons.radio_button_unchecked,
                                color: i == question['correctAnswer'] ? Colors.green : Colors.white,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '${String.fromCharCode(65 + i)}) ${question['options'][i]}',
                                style: TextStyle(
                                  color: i == question['correctAnswer'] ? Colors.green : Colors.white,
                                  fontWeight: i == question['correctAnswer'] ? FontWeight.bold : FontWeight.normal,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                      ],
                    ),
                  );
                }),
                const SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implement upload functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFF375569),
                      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
} 