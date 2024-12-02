import 'package:dashboard/widgets/card_and_transaction_widget.dart';
import 'package:dashboard/widgets/income_widget.dart';
import 'package:flutter/material.dart';

class SectionCardTransactionAndIncome extends StatelessWidget {
  const SectionCardTransactionAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CardAndTransactionWidget(),
        SizedBox(height: 24),
        IncomeWidget(),
      ],
    );
  }
}
