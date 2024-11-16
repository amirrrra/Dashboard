import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/colors_pallete.dart';
import 'package:flutter/material.dart';

class InvoiceFormTextfieldWidget extends StatelessWidget {
  final String hint;

  const InvoiceFormTextfieldWidget({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextField(
        cursorColor: ColorsPallete.kPrimaryColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorsPallete.kWhiteSmoke,
          hoverColor: ColorsPallete.kTransparent,
          hintText: hint,
          hintStyle: AppStyles.regular16(context).copyWith(
            color: ColorsPallete.kGrayLight,
          ),
          enabledBorder: getBorder(),
          focusedBorder: getBorder(),
        ),
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
