import 'package:dashboard/models/expenses_model.dart';
import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/widgets/expenses_basic_item_widget.dart';
import 'package:flutter/material.dart';

class ExpensesInactiveItemWidget extends StatelessWidget {
  final ExpensesModel expensesModel;
  const ExpensesInactiveItemWidget({super.key, required this.expensesModel});

  @override
  Widget build(BuildContext context) {
    return ExpensesBasicItemWidget(
      expensesModel: expensesModel,
      borderColor: AppColors.kGrayWhisper,
      titleColor: AppColors.kPrimaryColor,
      iconColor: AppColors.kBlueSky,
    );
  }
}
