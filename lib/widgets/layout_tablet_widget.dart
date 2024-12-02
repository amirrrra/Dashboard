import 'package:dashboard/widgets/drawer_widget.dart';
import 'package:dashboard/widgets/section_card_transaction_and_income.dart';
import 'package:dashboard/widgets/section_expenses_and_invoice.dart';
import 'package:flutter/material.dart';

class LayoutTabletWidget extends StatelessWidget {
  const LayoutTabletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: DrawerWidget(),
        ),
        Expanded(
          flex: 5,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                children: [
                  SectionExpensesAndInvoice(),
                  SectionCardTransactionAndIncome(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
