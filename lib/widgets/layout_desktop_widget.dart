import 'package:dashboard/widgets/drawer_widget.dart';
import 'package:dashboard/widgets/section_card_transaction_and_income.dart';
import 'package:dashboard/widgets/section_expenses_and_invoice.dart';
import 'package:flutter/material.dart';

class LayoutDesktopWidget extends StatelessWidget {
  const LayoutDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: DrawerWidget(),
        ),
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: SectionExpensesAndInvoice(),
                      ),
                      SizedBox(width: 24),
                      Expanded(
                        flex: 2,
                        child: SectionCardTransactionAndIncome(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
