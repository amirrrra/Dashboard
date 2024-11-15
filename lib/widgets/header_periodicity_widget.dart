import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/colors_pallete.dart';
import 'package:flutter/material.dart';

class HeaderPeriodicityWidget extends StatelessWidget {
  const HeaderPeriodicityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 134,
      height: 48,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: ColorsPallete.kWhite,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: ColorsPallete.kGrayWhisper,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.medium16(context),
          ),
          const SizedBox(width: 18),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 24,
          ),
        ],
      ),
    );
  }
}