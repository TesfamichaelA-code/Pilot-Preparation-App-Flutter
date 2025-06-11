import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../shared/widgets/app_bottom_nav.dart';
import '../../homepage/presentation/home_page.dart';
import '../../exams/presentation/exams_page.dart';
import '../../interviews/presentation/interview_page.dart';
import '../application/progress_notifier.dart';

class ProgressPage extends ConsumerStatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends ConsumerState<ProgressPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(progressNotifierProvider.notifier).getProgressStats();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(progressNotifierProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF375569),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Progress',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: () {
              ref.read(progressNotifierProvider.notifier).getProgressStats();
            },
          ),
        ],
      ),
      body: state.isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : state.error != null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        state.error!,
                        style: const TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          ref.read(progressNotifierProvider.notifier).getProgressStats();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF375569),
                        ),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                )
              : state.stats == null
                  ? const Center(
                      child: Text(
                        'No progress data available',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: Card(
                              color: const Color(0xFF375569),
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(8, 32, 16, 16),
                                child: BarChart(
                                  BarChartData(
                                    alignment: BarChartAlignment.spaceAround,
                                    maxY: 100,
                                    minY: 0,
                                    barTouchData: BarTouchData(enabled: false),
                                    titlesData: FlTitlesData(
                                      show: true,
                                      bottomTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                          showTitles: true,
                                          getTitlesWidget: (value, meta) {
                                            final index = value.toInt();
                                            if (index >= 0 && index < (state.stats?.progressOverTime.length ?? 0)) {
                                              return Padding(
                                                padding: const EdgeInsets.only(top: 8.0),
                                                child: Text(
                                                  'Week ${index + 1}',
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              );
                                            }
                                            return const SizedBox();
                                          },
                                          reservedSize: 30,
                                        ),
                                      ),
                                      leftTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                          showTitles: true,
                                          interval: 20,
                                          getTitlesWidget: (value, meta) {
                                            if (value % 20 == 0) {
                                              return Text(
                                                '${value.toInt()}%',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              );
                                            }
                                            return const SizedBox();
                                          },
                                          reservedSize: 40,
                                        ),
                                      ),
                                      rightTitles: AxisTitles(
                                        sideTitles: SideTitles(showTitles: false),
                                      ),
                                      topTitles: AxisTitles(
                                        sideTitles: SideTitles(showTitles: false),
                                      ),
                                    ),
                                    gridData: FlGridData(
                                      show: true,
                                      horizontalInterval: 20,
                                      drawVerticalLine: false,
                                      getDrawingHorizontalLine: (value) {
                                        if (value % 20 == 0) {
                                          return FlLine(
                                            color: Colors.white.withOpacity(0.2),
                                            strokeWidth: 1,
                                          );
                                        }
                                        return FlLine(
                                          color: Colors.transparent,
                                          strokeWidth: 0,
                                        );
                                      },
                                    ),
                                    borderData: FlBorderData(
                                      show: true,
                                      border: Border(
                                        left: BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                        bottom: BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                    ),
                                    barGroups: state.stats?.progressOverTime
                                        .asMap()
                                        .entries
                                        .map((entry) {
                                          final progress = entry.value;
                                          return BarChartGroupData(
                                            x: entry.key,
                                            barRods: [
                                              BarChartRodData(
                                                toY: progress.averageScore,
                                                color: const Color(0xFF64B5F6),
                                                width: 16,
                                                borderRadius: const BorderRadius.only(
                                                  topLeft: Radius.circular(4),
                                                  topRight: Radius.circular(4),
                                                ),
                                              ),
                                              BarChartRodData(
                                                toY: progress.totalScore / progress.count,
                                                color: Colors.white,
                                                width: 16,
                                                borderRadius: const BorderRadius.only(
                                                  topLeft: Radius.circular(4),
                                                  topRight: Radius.circular(4),
                                                ),
                                              ),
                                            ],
                                          );
                                        })
                                        .toList() ??
                                        [],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildLegendItem('Exam Progress', const Color(0xFF64B5F6)),
                              const SizedBox(width: 24),
                              _buildLegendItem('Interview Progress', Colors.white),
                            ],
                          ),
                        ],
                      ),
                    ),
      bottomNavigationBar: AppBottomNav(
        currentIndex: 3,
        onTap: (index) {
          if (index == 3) return;

          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ExamsPage()),
              );
              break;
            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const InterviewPage()),
              );
              break;
          }
        },
      ),
    );
  }

  Widget _buildLegendItem(String label, Color color) {
    return Row(
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

