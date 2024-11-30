import 'package:dashboard/widgets/income_chart_widget.dart';
import 'package:dashboard/widgets/income_details_widget.dart';
import 'package:flutter/material.dart';

class IncomeChartAndDetailsWidget extends StatelessWidget {
  const IncomeChartAndDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: IncomeChartWidget(),
        ),
        SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: IncomeDetailsWidget(),
        ),
      ],
    );
  }
}
