import 'package:dashboard/utils/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChartWidget extends StatelessWidget {
  const IncomeChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: PieChart(
        PieChartData(
          sectionsSpace: 0,
          centerSpaceRadius: 40,
          sections: List.generate(
            4,
            (index) {
              return chartItems[index];
            },
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> get chartItems => [
        getPieChartSectionData(color: AppColors.kBlueMedium, value: 40),
        getPieChartSectionData(color: AppColors.kBlueSky, value: 25),
        getPieChartSectionData(color: AppColors.kPrimaryColor, value: 20),
        getPieChartSectionData(color: AppColors.kBeige, value: 15),
      ];

  PieChartSectionData getPieChartSectionData({
    required double value,
    required Color color,
  }) {
    return PieChartSectionData(
      showTitle: false,
      radius: 21,
      value: value,
      color: color,
    );
  }
}
