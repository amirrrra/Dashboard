import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/widgets/header_widget.dart';
import 'package:dashboard/widgets/invoice_button_widget.dart';
import 'package:dashboard/widgets/invoice_form_widget.dart';
import 'package:dashboard/widgets/invoice_transaction_widget.dart';
import 'package:dashboard/widgets/section_widget.dart';
import 'package:flutter/material.dart';

class InvoiceWidget extends StatelessWidget {
  const InvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(
            title: 'Quick Invoice',
            widget: CircleAvatar(
              backgroundColor: AppColors.kWhiteSmoke,
              child: Icon(
                Icons.add,
                color: AppColors.kBlueSky,
              ),
            ),
          ),
          SizedBox(height: 24),
          InvoiceTransactionWidget(),
          Divider(
            color: AppColors.kGrayWhisper,
            height: 48,
          ),
          InvoiceFormWidget(),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: InvoiceButtonWidget(
                  text: 'Add more details',
                  textColor: AppColors.kBlueSky,
                  backgroundColor: AppColors.kTransparent,
                ),
              ),
              Expanded(
                child: InvoiceButtonWidget(
                  text: 'Send Money',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
