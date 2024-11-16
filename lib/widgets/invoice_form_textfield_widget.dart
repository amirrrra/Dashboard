import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/colors_pallete.dart';
import 'package:flutter/material.dart';

class InvoiceFormTextfieldWidget extends StatelessWidget {
  const InvoiceFormTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: ColorsPallete.kPrimaryColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsPallete.kWhiteSmoke,
        hoverColor: ColorsPallete.kTransparent,
        hintText: 'Type customer name',
        hintStyle: AppStyles.regular16(context).copyWith(
          color: ColorsPallete.kGrayLight,
        ),
        enabledBorder: getBorder(),
        focusedBorder: getBorder(),
      ),
    );
  }

  OutlineInputBorder getBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide.none,
    );
  }
}
