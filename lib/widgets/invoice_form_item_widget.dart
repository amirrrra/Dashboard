import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/invoice_form_textfield_widget.dart';
import 'package:flutter/material.dart';

class InvoiceFormItemWidget extends StatelessWidget {
  final String title, hint;

  const InvoiceFormItemWidget({
    super.key,
    required this.title,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.medium16(context),
        ),
        const SizedBox(height: 12),
        InvoiceFormTextfieldWidget(hint: hint)
      ],
    );
  }
}
