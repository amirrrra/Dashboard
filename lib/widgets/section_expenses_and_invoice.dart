import 'package:dashboard/widgets/expenses_widget.dart';
import 'package:dashboard/widgets/invoice_widget.dart';
import 'package:flutter/material.dart';

class SectionExpensesAndInvoice extends StatelessWidget {
  const SectionExpensesAndInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ExpensesWidget(),
        SizedBox(height: 24),
        InvoiceWidget(),
      ],
    );
  }
}
