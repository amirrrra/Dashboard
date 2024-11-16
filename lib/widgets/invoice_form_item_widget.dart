import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/invoice_form_textfield_widget.dart';
import 'package:flutter/material.dart';

class InvoiceFormItemWidget extends StatelessWidget {
  const InvoiceFormItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            'Customer name',
            style: AppStyles.medium16(context)
        ),
        const SizedBox(height: 12,),
        const InvoiceFormTextfieldWidget()
      ],
    );
  }
}
