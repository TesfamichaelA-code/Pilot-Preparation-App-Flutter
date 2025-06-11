import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../application/student_notifier.dart';
import 'admin_progress_page.dart';
import '../../../../shared/widgets/app_bottom_nav.dart';

class AdminTrackProgressPage extends ConsumerStatefulWidget {
  const AdminTrackProgressPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AdminTrackProgressPage> createState() => _AdminTrackProgressPageState();
}

class _AdminTrackProgressPageState extends ConsumerState<AdminTrackProgressPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(studentNotifierProvider.notifier).getAllStudents());
  }

  @override
  Widget build(BuildContext context) {
    final studentState = ref.watch(studentNotifierProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF375569),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Track users progress',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                const Text(
                  'Registered Users',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: studentState.isLoading
                      ? const Center(child: CircularProgressIndicator(color: Colors.white))
                      : studentState.error != null
                          ? Center(child: Text(studentState.error!, style: const TextStyle(color: Colors.red)))
                          : studentState.students == null
                              ? const Center(child: Text('No students found', style: TextStyle(color: Colors.white)))
                              : ListView.separated(
                                  itemCount: studentState.students!.data.length,
                                  separatorBuilder: (context, index) => const SizedBox(height: 16),
                                  itemBuilder: (context, index) {
                                    final student = studentState.students!.data[index];
                                    return Row(
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Icon(Icons.person, color: Color(0xFF375569)),
                                        ),
                                        const SizedBox(width: 16),
                                        Expanded(
                                          child: Text(
                                            student.name,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            print('Navigating to progress for student ID: ${student.id}');
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => AdminProgressPage(userName: student.name, studentId: student.id),
                                              ),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            foregroundColor: const Color(0xFF375569),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            elevation: 0,
                                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                          ),
                                          child: const Text('Engagement', style: TextStyle(fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: AppBottomNav(
        currentIndex: 3, // Progress tab
        onTap: (index) {
          // TODO: Handle navigation
        },
      ),
    );
  }
} 