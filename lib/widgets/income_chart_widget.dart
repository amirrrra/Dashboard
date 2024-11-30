import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChartWidget extends StatefulWidget {
  final bool showTitle;
  const IncomeChartWidget({super.key, this.showTitle = false});

  @override
  State<IncomeChartWidget> createState() => _IncomeChartWidgetState();
}

class _IncomeChartWidgetState extends State<IncomeChartWidget> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0, pieTouchResponse) {
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            },
          ),
          sectionsSpace: 0,
          sections: List.generate(
            4,
            (index) {
              return chartItems(context)[index];
            },
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> chartItems(BuildContext context) => [
        getPieChartSectionData(
          context,
          color: AppColors.kBlueMedium,
          value: 40,
          index: 0,
          title: 'Design service',
          titleValue: '40%',
        ),
        getPieChartSectionData(
          context,
          color: AppColors.kBlueSky,
          value: 25,
          index: 1,
          title: 'Design product',
          titleValue: '25%',
        ),
        getPieChartSectionData(
          context,
          color: AppColors.kPrimaryColor,
          value: 20,
          index: 2,
          title: 'Product royalti',
          titleValue: '20%',
        ),
        getPieChartSectionData(
          context,
          color: AppColors.kBeige,
          value: 15,
          index: 3,
          title: 'Other',
          titleValue: '15%',
        ),
      ];

  // Basic Pie
  PieChartSectionData getPieChartSectionData(
    BuildContext context, {
    required double value,
    required Color color,
    required int index,
    required String title,
    required String titleValue,
  }) {
    bool isTouched = activeIndex == index;

    return PieChartSectionData(
      value: value,
      color: color,
      showTitle: widget.showTitle,
      radius: widget.showTitle
          ? isTouched
              ? 40
              : 30
          : isTouched
              ? 25
              : 20,
      title: isTouched ? title : titleValue,
      titleStyle: AppStyles.medium16(context).copyWith(
        color: isTouched ? AppColors.kBlack : AppColors.kWhite,
      ),
      titlePositionPercentageOffset: isTouched ? 1.5 : null,
    );
  }
}
