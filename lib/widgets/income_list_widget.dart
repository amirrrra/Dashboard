import 'dart:developer';

import 'package:dashboard/models/income_model.dart';
import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/widgets/income_item_widget.dart';
import 'package:flutter/material.dart';

class IncomeListWidget extends StatelessWidget {
  const IncomeListWidget({super.key});
  static const incomeItems = [
    IncomeModel(
      title: 'Design service',
      percentage: '40',
      color: AppColors.kBlueMedium,
    ),
    IncomeModel(
      title: 'Design product',
      percentage: '25',
      color: AppColors.kBlueSky,
    ),
    IncomeModel(
      title: 'Product royalti',
      percentage: '20',
      color: AppColors.kPrimaryColor,
    ),
    IncomeModel(
      title: 'Other',
      percentage: '15',
      color: AppColors.kBeige,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      children: List.generate(
        4,
        (index) => IncomeItemWidget(
          incomeModel: incomeItems[index],
        ),
      ),
    );
  }
}
