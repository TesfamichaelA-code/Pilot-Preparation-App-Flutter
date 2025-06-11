import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../application/interview_notifier.dart';
import '../domain/entities/interview.dart';

class InterviewQuestionsPage extends ConsumerStatefulWidget {
  final String category;

  const InterviewQuestionsPage({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  ConsumerState<InterviewQuestionsPage> createState() => _InterviewQuestionsPageState();
}

class _InterviewQuestionsPageState extends ConsumerState<InterviewQuestionsPage> {
  static const int _questionsPerPage = 5;
  int _currentPage = 0;
  Map<int, bool> _expandedStates = {};

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(interviewNotifierProvider.notifier).setCategory(widget.category);
    });
  }

  void _nextPage(int totalPages) {
    if (_currentPage < totalPages - 1) {
      setState(() {
        _currentPage++;
        _expandedStates.clear(); // Reset expanded states on page change
      });
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
        _expandedStates.clear(); // Reset expanded states on page change
      });
    }
  }

  List<T> _getPageItems<T>(List<T> items) {
    final startIndex = _currentPage * _questionsPerPage;
    final endIndex = (startIndex + _questionsPerPage) < items.length 
        ? startIndex + _questionsPerPage 
        : items.length;
    return items.sublist(startIndex, endIndex);
  }

  void _toggleAnswer(int index) {
    setState(() {
      _expandedStates[index] = !(_expandedStates[index] ?? false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(interviewNotifierProvider);
    final filteredInterviews = state.filteredInterviews;
    final totalPages = (filteredInterviews.length / _questionsPerPage).ceil();
    final pageInterviews = _getPageItems(filteredInterviews);

    return Scaffold(
      backgroundColor: const Color(0xFF1E293B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E293B),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            ref.read(interviewNotifierProvider.notifier).clearFilters();
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.category,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: state.isLoading
          ? const Scaffold(
              backgroundColor: Color(0xFF375569),
              body: Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            )
          : state.error != null
              ? Center(
                  child: Text(
                    'Error: ${state.error}',
                    style: const TextStyle(color: Colors.white),
                  ),
                )
              : Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
                        itemCount: pageInterviews.length,
              itemBuilder: (context, index) {
                          final interview = pageInterviews[index];
                          final globalIndex = (_currentPage * _questionsPerPage) + index + 1;
                          final isExpanded = _expandedStates[globalIndex] ?? false;
                          
                          return Column(
                            children: [
                              // Question Card
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF334155),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Text(
                                  '$globalIndex. ${interview.question}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                              ),
                              const SizedBox(height: 8),
                              // Sample Answer Button
                              Container(
                                width: double.infinity,
                                margin: const EdgeInsets.only(bottom: 24),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF334155),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: TextButton(
                                      onPressed: () => _toggleAnswer(globalIndex),
                                      style: TextButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 24,
                                          vertical: 12,
                                        ),
                                        backgroundColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: const Text(
                                        'Sample Answer',
                                        style: TextStyle(
                              color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                                  ),
                                ),
                              ),
                              // Answer Dropdown
                              if (isExpanded)
                                Container(
                                  width: double.infinity,
                                  margin: const EdgeInsets.only(bottom: 24),
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF334155),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Text(
                                    interview.sampleAnswer,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                        ),
                      ),
                    ],
                );
              },
            ),
          ),
                    // Navigation Buttons
                    if (totalPages > 1)
          Container(
                        width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                            // Previous Button
                if (_currentPage > 0)
                              TextButton.icon(
                      onPressed: _previousPage,
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                label: const Text(
                        'Previous',
                        style: TextStyle(
                                    color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                else
                              const SizedBox(), // Empty space when no Previous button
                            // Next Button
                            if (_currentPage < totalPages - 1)
                              TextButton.icon(
                                onPressed: () => _nextPage(totalPages),
                                icon: const Text(
                        'Next',
                        style: TextStyle(
                                    color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                                label: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                    ),
                              )
                            else
                              const SizedBox(), // Empty space when no Next button
              ],
            ),
          ),
        ],
      ),
    );
  }     
} 