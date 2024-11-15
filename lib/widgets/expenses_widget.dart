import 'package:dashboard/utils/colors_pallete.dart';
import 'package:dashboard/widgets/expenses_list_widget.dart';
import 'package:dashboard/widgets/header_periodicity_widget.dart';
import 'package:dashboard/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class ExpensesWidget extends StatelessWidget {
  const ExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 32, right: 24, top: 40, bottom: 24),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 14),
      decoration: const BoxDecoration(
        color: ColorsPallete.kWhite,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: HeaderWidget(
              title: 'All Expenses',
              widget: HeaderPeriodicityWidget(),
            ),
          ),
          SizedBox(height: 16),
          ExpensesListWidget()
        ],
      ),
    );
  }
}
