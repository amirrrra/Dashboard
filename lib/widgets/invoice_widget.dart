import 'package:dashboard/utils/colors_pallete.dart';
import 'package:dashboard/widgets/header_widget.dart';
import 'package:dashboard/widgets/invoice_form_widget.dart';
import 'package:dashboard/widgets/invoice_transaction_widget.dart';
import 'package:flutter/material.dart';

class InvoiceWidget extends StatelessWidget {
  const InvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: ColorsPallete.kWhite,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(
            title: 'Quick Invoice',
            widget: CircleAvatar(
              backgroundColor: ColorsPallete.kWhiteSmoke,
              child: Icon(
                Icons.add,
                color: ColorsPallete.kBlueSky,
              ),
            ),
          ),
          SizedBox(height: 24),
          InvoiceTransactionWidget(),
          Divider(
            color: ColorsPallete.kGrayWhisper,
            height: 48,
          ),
          InvoiceFormWidget()
        ],
      ),
    );
  }
}
