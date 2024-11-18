import 'package:dashboard/widgets/header_periodicity_widget.dart';
import 'package:dashboard/widgets/header_widget.dart';
import 'package:dashboard/widgets/section_widget.dart';
import 'package:flutter/material.dart';

class IncomeWidget extends StatelessWidget {
  const IncomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(
            title: 'Income',
            widget: HeaderPeriodicityWidget(),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
