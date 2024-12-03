import 'package:dashboard/utils/size_config.dart';
import 'package:dashboard/widgets/income_chart_and_details_widget.dart';
import 'package:dashboard/widgets/income_chart_widget.dart';
import 'package:flutter/material.dart';

class IncomeBodyWidget extends StatelessWidget {
  const IncomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;

    return screenWidth >= SizeConfig.desktop && screenWidth <= 1240 || screenWidth<360
        ? const Padding(
          padding: EdgeInsets.all(25),
          child: IncomeChartWidget(showTitle: true),
        )
        : const IncomeChartAndDetailsWidget();
  }
}
