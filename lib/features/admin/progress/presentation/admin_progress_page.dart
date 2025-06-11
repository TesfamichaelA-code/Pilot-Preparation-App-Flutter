import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/widgets/app_bottom_nav.dart';
import '../application/get_admin_student_progress_use_case.dart';
import '../domain/entities/admin_student_progress.dart';
import 'package:dio/dio.dart';
import '../infrastructure/datasources/admin_progress_data_source.dart';
import '../infrastructure/datasources/admin_progress_remote_data_source.dart';
import '../domain/repositories/admin_progress_repository.dart';
import '../infrastructure/repositories/admin_progress_repository_impl.dart';
import '../../../../core/network/dio_client.dart';

// Assuming providers for dependencies exist, like:
// final adminProgressRepositoryProvider = Provider<AdminProgressRepository>((ref) => AdminProgressRepositoryImpl(remoteDataSource: ref.read(adminProgressRemoteDataSourceProvider)));
// final adminProgressRemoteDataSourceProvider = Provider<AdminProgressDataSource>((ref) => AdminProgressRemoteDataSourceImpl(ref.read(dioProvider)));
// final dioProvider = Provider<Dio>((ref) => Dio()); // Configure with base URL

// Define providers for the infrastructure layer using the authenticated DioClient
final adminProgressRemoteDataSourceProvider = Provider<AdminProgressDataSource>((ref) {
  return AdminProgressRemoteDataSourceImpl(ref.read(dioClientProvider).dio);
});

final adminProgressRepositoryProvider = Provider<AdminProgressRepository>((ref) {
  return AdminProgressRepositoryImpl(remoteDataSource: ref.read(adminProgressRemoteDataSourceProvider));
});

// Provider for the GetAdminStudentProgressUseCase
final getAdminStudentProgressUseCaseProvider = Provider<GetAdminStudentProgressUseCase>((ref) {
  return GetAdminStudentProgressUseCase(ref.read(adminProgressRepositoryProvider));
});

// FutureProvider.family to fetch student progress based on studentId
final studentProgressFutureProvider = FutureProvider.family<AdminStudentProgress, String>((ref, studentId) async {
  final useCase = ref.read(getAdminStudentProgressUseCaseProvider);
  return useCase(studentId: studentId);
});

class AdminProgressPage extends ConsumerStatefulWidget {
  final String userName;
  final String studentId;

  const AdminProgressPage({Key? key, required this.userName, required this.studentId}) : super(key: key);

  @override
  ConsumerState<AdminProgressPage> createState() => _AdminProgressPageState();
}

class _AdminProgressPageState extends ConsumerState<AdminProgressPage> {
  @override
  Widget build(BuildContext context) {
    // Watch the student progress provider
    final studentProgressAsyncValue = ref.watch(studentProgressFutureProvider(widget.studentId));

    return Scaffold(
      backgroundColor: const Color(0xFF375569),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          'Progress',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: studentProgressAsyncValue.when(
        loading: () => const Center(child: CircularProgressIndicator(color: Colors.white)),
        error: (err, stack) => Center(child: Text('Error: ${err.toString()}', style: const TextStyle(color: Colors.red))),
        data: (studentProgress) {
          // Data loaded successfully, build the UI with studentProgress data
          return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Color(0xFF375569)),
                  ),
                  const SizedBox(width: 12),
                  Text(
                      widget.userName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
            ),
            const SizedBox(height: 24),
            const Text(
                  'Progress Overview',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 12),
                Expanded(
              child: Card(
                color: const Color(0xFF375569),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Total Exams Taken: ${studentProgress!.summary.totalExamsTaken}', style: TextStyle(color: Colors.white)),
                          Text('Average Score: ${studentProgress!.summary.averageScore.toStringAsFixed(1)}', style: TextStyle(color: Colors.white)),
                          const SizedBox(height: 24),
                          Expanded(
                            child: studentProgress.examResults.isEmpty
                                ? const Center(child: Text('No exam results available', style: TextStyle(color: Colors.white)))
                                : Column(
                                    children: [
                                      Expanded(
                                        child: BarChart(
                                          BarChartData(
                                            alignment: BarChartAlignment.spaceAround,
                                            maxY: 100, // Scores are percentages
                                            barTouchData: BarTouchData(enabled: true),
                                            titlesData: FlTitlesData(
                                              show: true,
                                              bottomTitles: AxisTitles(
                                                sideTitles: SideTitles(
                                                  showTitles: true,
                                                  getTitlesWidget: (value, meta) { // Display examTitle
                                                    final examIndex = value.toInt();
                                                    if (examIndex >= 0 && examIndex < studentProgress.examResults.length) {
                                                      return Padding(
                                                        padding: const EdgeInsets.only(top: 8.0),
                                                        child: Text(
                                                          studentProgress.examResults[examIndex].examTitle,
                                                          style: const TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                          maxLines: 2, // Allow title to wrap
                                                          overflow: TextOverflow.ellipsis,
                                                        ),
                                                      );
                                                    } else {
                                                      return const Text('');
                                                    }
                                                  },
                                                  reservedSize: 40,
                                                ),
                                              ),
                                              leftTitles: AxisTitles(
                                                sideTitles: SideTitles(
                                                  showTitles: true,
                                                  reservedSize: 40,
                                                  getTitlesWidget: (value, meta) { // Display percentages
                                                    return Text(
                                                      '${value.toInt()}%',
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                              topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                            ),
                                            gridData: FlGridData(
                                              show: true,
                                              horizontalInterval: 20, // Interval every 20%
                                              drawVerticalLine: false,
                                              getDrawingHorizontalLine: (value) {
                                                return FlLine(
                                                  color: Colors.white.withOpacity(0.2),
                                                  strokeWidth: 1,
                                                );
                                              },
                                            ),
                                            borderData: FlBorderData(show: false),
                                            barGroups: studentProgress.examResults.asMap().entries.map((entry) {
                                              final index = entry.key;
                                              final exam = entry.value;
                                              return BarChartGroupData(
                                                x: index,
                                                barRods: [
                                                  BarChartRodData(
                                                    toY: exam.score, // Use exam score
                                                    color: const Color(0xFF64B5F6), // Single color for exam scores
                                                    width: 16,
                                                    borderRadius: const BorderRadius.only(
                                                      topLeft: Radius.circular(4),
                                                      topRight: Radius.circular(4),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 16), // Add spacing for legend
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          _buildLegendItem('Exam Score', const Color(0xFF64B5F6)),
                                        ],
                                      ),
                                    ],
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
          ],
        ),
          );
        },
      ),
      bottomNavigationBar: AppBottomNav(
        currentIndex: 3, // Progress tab
        onTap: (index) {
          // TODO: Handle navigation
        },
      ),
    );
  }

  // Helper method to build legend items (re-added)
  Widget _buildLegendItem(String label, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min, // Added to prevent overflow
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
} 

// Remove the old StatelessWidget version
/*
class AdminProgressPage extends StatelessWidget {
  final String userName;
  const AdminProgressPage({Key? key, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) { ... }
  BarChartGroupData _generateBarGroup(int x, double mockExamValue, double interviewValue) { ... }
  Widget _buildLegendItem(String label, Color color) { ... }
}
*/ 