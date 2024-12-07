import 'package:dashboard/models/income_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/app_colors.dart';
import 'package:flutter/material.dart';

class IncomeItemWidget extends StatelessWidget {
  final IncomeModel incomeModel;
  const IncomeItemWidget({super.key, required this.incomeModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      horizontalTitleGap:8,
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeModel.title,
        style: AppStyles.regular16(context),
        maxLines: 2,
      ),
      trailing: Text(
        '${incomeModel.percentage}%',
        style: AppStyles.medium16(context).copyWith(
          color: AppColors.kBlueSky,
        ),
      ),
    );
  }
}
