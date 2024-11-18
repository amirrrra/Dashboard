import 'package:dashboard/utils/colors_pallete.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChartWidget extends StatelessWidget {
  const IncomeChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
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
        getPieChartSectionData(color: ColorsPallete.kBlueMedium, value: 40),
        getPieChartSectionData(color: ColorsPallete.kBlueSky, value: 25),
        getPieChartSectionData(color: ColorsPallete.kPrimaryColor, value: 20),
        getPieChartSectionData(color: ColorsPallete.kBeige, value: 15),
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
