import 'package:dashboard/utils/colors_pallete.dart';
import 'package:dashboard/widgets/header_periodicity_widget.dart';
import 'package:dashboard/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class ExpensesWidget extends StatelessWidget {
  const ExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 32, right: 24, top: 40, bottom: 24),
      padding: const EdgeInsets.all(20),
      decoration: const ShapeDecoration(
        color: ColorsPallete.kWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      child: const Column(
        children: [
          HeaderWidget(
            title: 'All Expenses',
            widget: HeaderPeriodicityWidget(),
          )
        ],
      ),
    );
  }
}
