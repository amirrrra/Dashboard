import 'package:dashboard/widgets/expenses_list_widget.dart';
import 'package:dashboard/widgets/header_periodicity_widget.dart';
import 'package:dashboard/widgets/header_widget.dart';
import 'package:dashboard/widgets/section_widget.dart';
import 'package:flutter/material.dart';

class ExpensesWidget extends StatelessWidget {
  const ExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionWidget(
      child: Column(
        children: [
          HeaderWidget(
            title: 'All Expenses',
            widget: HeaderPeriodicityWidget(),
          ),
          SizedBox(height: 16),
          ExpensesListWidget()
        ],
      ),
    );
  }
}
