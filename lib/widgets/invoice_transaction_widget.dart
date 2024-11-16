import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/invoice_transaction_list_widget.dart';
import 'package:flutter/material.dart';

class InvoiceTransactionWidget extends StatelessWidget {
  const InvoiceTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.medium16(context),
        ),
        const SizedBox(height: 12,),
        const InvoiceTransactionListWidget()
      ],
    );
  }
}
