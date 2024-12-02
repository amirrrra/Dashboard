import 'package:dashboard/widgets/section_card_transaction_and_income.dart';
import 'package:dashboard/widgets/section_expenses_and_invoice.dart';
import 'package:flutter/material.dart';

class LayoutMobileWidget extends StatelessWidget {
  const LayoutMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          children: [
            SectionExpensesAndInvoice(),
            SectionCardTransactionAndIncome(),
          ],
        ),
      ),
    );
  }
}
