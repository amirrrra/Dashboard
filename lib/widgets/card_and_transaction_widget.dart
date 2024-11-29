import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/widgets/card_widget.dart';
import 'package:dashboard/widgets/section_widget.dart';
import 'package:dashboard/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

class CardAndTransactionWidget extends StatelessWidget {
  const CardAndTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionWidget(
        child: Column(
      children: [
        CardWidget(),
        Divider(
          height: 40,
          color: AppColors.kGrayWhisper,
        ),
        TransactionWidget(),
      ],
    ));
  }
}
