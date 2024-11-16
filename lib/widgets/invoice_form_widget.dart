import 'package:dashboard/widgets/invoice_form_item_widget.dart';
import 'package:flutter/material.dart';

class InvoiceFormWidget extends StatelessWidget {
  const InvoiceFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: InvoiceFormItemWidget(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: InvoiceFormItemWidget(
                title: 'Customer Email',
                hint: 'Type customer Email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: InvoiceFormItemWidget(
                title: 'Item name',
                hint: 'Type Item name',
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: InvoiceFormItemWidget(
                title: 'Item mount',
                hint: 'USD ',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
