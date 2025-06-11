import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/student/interviews/presentation/interview_page.dart';
import '../../features/student/homepage/presentation/home_page.dart';
import '../../features/student/exams/presentation/exams_page.dart';
import '../../features/student/progress/presentation/progress_page.dart';
import '../../features/student/resources/presentation/resource_page.dart';
import '../../features/admin/homepage/presentation/admin_home_page.dart';
import '../../features/admin/exam/presentation/admin_mock_exams_page.dart';
import '../../features/admin/interview/presentation/admin_interviews_page.dart';
import '../../features/admin/progress/presentation/admin_track_progress_page.dart';
import '../../features/admin/resources/presentation/admin_resource_page.dart';
import '../../features/authentication/application/auth_notifier.dart';

class AppBottomNav extends ConsumerWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  
  const AppBottomNav({
    Key? key, 
    required this.currentIndex, 
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);
    final isAdmin = authState.roles.contains('admin');
    final items = _getNavigationItems(isAdmin);

    return BottomNavigationBar(
      backgroundColor: const Color(0xFF46647A),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex < 0 ? 0 : currentIndex >= items.length ? 0 : currentIndex,
      selectedIconTheme: IconThemeData(
        color: currentIndex < 0 ? Colors.white70 : Colors.white,
      ),
      selectedLabelStyle: TextStyle(
        color: currentIndex < 0 ? Colors.white70 : Colors.white,
      ),
      onTap: (index) {
        if (index == currentIndex && currentIndex >= 0) return; // Don't navigate if already on the page
        
        if (isAdmin) {
          _handleAdminNavigation(context, index);
        } else {
          _handleStudentNavigation(context, index);
        }
        
        onTap(index);
      },
      items: items,
    );
  }

  void _handleAdminNavigation(BuildContext context, int index) {
    switch (index) {
      case 0: // Home
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AdminHomePage()),
        );
        break;
      case 1: // Exam Management
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AdminMockExamsPage()),
        );
        break;
      case 2: // Interview Management
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AdminInterviewsPage()),
        );
        break;
      case 3: // Progress Tracking
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AdminTrackProgressPage()),
        );
        break;
      case 4: // Resource Management
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AdminResourcePage()),
        );
        break;
    }
  }

  void _handleStudentNavigation(BuildContext context, int index) {
    switch (index) {
      case 0: // Home
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
        break;
      case 1: // Exam
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ExamsPage()),
        );
        break;
      case 2: // Interview
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const InterviewPage()),
        );
        break;
      case 3: // Progress
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ProgressPage()),
        );
        break;
      case 4: // Resource
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ResourcePage()),
        );
        break;
    }
  }

  List<BottomNavigationBarItem> _getNavigationItems(bool isAdmin) {
    return [
      BottomNavigationBarItem(
        icon: const Icon(Icons.home),
        label: isAdmin ? 'Dashboard' : 'Home',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.assignment),
        label: isAdmin ? ' Exams' : 'Exam',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.people),
        label: isAdmin ? ' Interviews' : 'Interview',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.show_chart),
        label: isAdmin ? 'Progress' : 'Progress',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.menu_book),
        label: isAdmin ? 'Resources' : 'Resource',
      ),
    ];
  }
} 
