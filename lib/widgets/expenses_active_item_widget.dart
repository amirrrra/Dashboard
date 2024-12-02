import 'package:dashboard/models/expenses_model.dart';
import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/widgets/expenses_basic_item_widget.dart';
import 'package:flutter/material.dart';

class ExpensesActiveItemWidget extends StatelessWidget {
  final ExpensesModel expensesModel;
  const ExpensesActiveItemWidget({super.key, required this.expensesModel});

  @override
  Widget build(BuildContext context) {
    return ExpensesBasicItemWidget(
      expensesModel: expensesModel,
      borderColor: AppColors.kBlueSky,
      containerColor: AppColors.kBlueSky,
      historyColor: AppColors.kWhite,
      iconColor: AppColors.kWhite,
      titleColor: AppColors.kWhite,
    );
   
  }
}
