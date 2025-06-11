import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../user/presentation/profile_page.dart';
import '../../../../shared/widgets/app_bottom_nav.dart';
import '../../exams/presentation/exams_page.dart';
import '../../interviews/presentation/interview_page.dart';
import '../../progress/presentation/progress_page.dart';
import '../../resources/presentation/resource_page.dart';
import '../../user/application/user_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF375569),
        automaticallyImplyLeading: false,
        title: const Text(
          'Pilot Preparation',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () async {
                // Fetch fresh profile data before navigating
                await ref.read(userNotifierProvider.notifier).getProfile();
                if (context.mounted) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                }
              },
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Color(0xFF375569)),
              ),
            ),
          ),
        ],
      ),
      body: Column(
            children: [
          Expanded(
            flex: 5,
            child: Image.asset(
              'assets/images/home.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
                ),
              ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _HomeCard(
                        title: 'Exams',
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ExamsPage(),
                            ),
                          );
                        },
                      ),
                      _HomeCard(
                        title: 'Interview',
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const InterviewPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _HomeCard(
                        title: 'Progress',
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ProgressPage(),
                            ),
                          );
                        },
                      ),
                      _HomeCard(
                        title: 'Resources',
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ResourcePage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const AppBottomNav(
        currentIndex: 0,
        onTap: _emptyCallback,
      ),
    );
  }
}

void _emptyCallback(int _) {
  // Empty callback since AppBottomNav handles navigation internally
}

class _HomeCard extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const _HomeCard({required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: 90,
        decoration: BoxDecoration(
          color: const Color(0xFF375569),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(4, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
} 