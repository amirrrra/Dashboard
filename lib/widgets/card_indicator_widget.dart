import 'package:dashboard/utils/colors_pallete.dart';
import 'package:flutter/material.dart';

class CardIndicatorWidget extends StatelessWidget {
  const CardIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: const ShapeDecoration(
        color: ColorsPallete.kPlatinum,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }
}
