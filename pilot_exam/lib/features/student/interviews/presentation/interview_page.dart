import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/widgets/app_bottom_nav.dart';
import '../../homepage/presentation/home_page.dart';
import '../application/interview_notifier.dart';
import 'interview_questions_page.dart';

class InterviewPage extends ConsumerStatefulWidget {
  const InterviewPage({Key? key}) : super(key: key);

  @override
  ConsumerState<InterviewPage> createState() => _InterviewPageState();
}

class _InterviewPageState extends ConsumerState<InterviewPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(interviewNotifierProvider.notifier).getAllInterviews());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(interviewNotifierProvider);
    final categories = state.availableCategories;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF375569),
        automaticallyImplyLeading: false,
        title: const Text(
          'Interview Questions',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: () {
              ref.read(interviewNotifierProvider.notifier).getAllInterviews();
            },
          ),
        ],
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Error: ${state.error}',
                        style: const TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          ref.read(interviewNotifierProvider.notifier).getAllInterviews();
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                )
              : SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
                      // First row of categories
                      if (categories.isNotEmpty)
            Row(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: _CategoryCard(
                                  title: categories[0],
                                  subtitle: _getCategoryDescription(categories[0]),
                      hasArrow: true,
                                  onTap: () => _navigateToQuestions(categories[0]),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: _CategoryCard(
                                  title: categories.length > 1 ? categories[1] : 'Coming Soon',
                                  subtitle: categories.length > 1 
                                    ? _getCategoryDescription(categories[1])
                                    : 'More categories will be added soon.',
                                  hasArrow: categories.length > 1,
                                  onTap: categories.length > 1 
                                    ? () => _navigateToQuestions(categories[1])
                                    : null,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),
                      // Interview image
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage('assets/images/interview.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),

                      // Second row of categories
                      if (categories.length > 2)
            Row(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: _CategoryCard(
                                  title: categories[2],
                                  subtitle: _getCategoryDescription(categories[2]),
                      hasArrow: true,
                                  onTap: () => _navigateToQuestions(categories[2]),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: _CategoryCard(
                                  title: categories.length > 3 ? categories[3] : 'Coming Soon',
                                  subtitle: categories.length > 3 
                                    ? _getCategoryDescription(categories[3])
                                    : 'More categories will be added soon.',
                                  hasArrow: categories.length > 3,
                                  onTap: categories.length > 3 
                                    ? () => _navigateToQuestions(categories[3])
                                    : null,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNav(
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          }
        },
      ),
    );
  }

  String _getCategoryDescription(String category) {
    final descriptions = {
      'Personal Questions': 'Motivations, experiences, and background in aviation.',
      'Teamwork': 'Teamwork in aviation settings.',
      'Ethiopian Airlines': 'Ethiopian Airlines and its operations.',
      'Scenarios': 'Problem-solving skills through hypothetical situations.',
    };

    return descriptions[category] ?? 'Questions related to $category.';
  }

  void _navigateToQuestions(String category) {
    ref.read(interviewNotifierProvider.notifier).setCategory(category);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => InterviewQuestionsPage(
          category: category,
        ),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool hasArrow;
  final VoidCallback? onTap;

  const _CategoryCard({
    required this.title,
    required this.subtitle,
    required this.hasArrow,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: const Color(0xFF375569),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  if (hasArrow)
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 20,
                    ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
} 
