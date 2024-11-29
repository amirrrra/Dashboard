import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/app_colors.dart';
import 'package:flutter/material.dart';

class IncomeBottomWidget extends StatelessWidget {
  const IncomeBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: AppColors.kGrayWhisper,
          height: 56,
        ),
        Text(
          'See detail',
          style: AppStyles.semiBold16(context).copyWith(
            color: AppColors.kBlueSky,
          ),
        )
      ],
    );
  }
}
