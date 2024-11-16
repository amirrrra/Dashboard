import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/colors_pallete.dart';
import 'package:flutter/material.dart';

class InvoiceButtonWidget extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  const InvoiceButtonWidget({
    super.key,
    required this.text,
    this.textColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(20),
          backgroundColor: backgroundColor ?? ColorsPallete.kBlueSky,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        onPressed: () {},
        child: Center(
          child: Text(
            text,
            style: AppStyles.semiBold18(context).copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
