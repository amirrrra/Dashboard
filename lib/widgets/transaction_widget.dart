import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/widgets/header_widget.dart';
import 'package:dashboard/widgets/transaction_list_widget.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(
          title: 'Transaction History',
          widget: Text(
            'See all',
            style: AppStyles.medium16(context).copyWith(
              color: AppColors.kBlueSky,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppStyles.medium16(context).copyWith(
            color: AppColors.kGrayLight,
          ),
        ),
        const SizedBox(height: 12),
        const TransactionListWidget()
      ],
    );
  }
}
