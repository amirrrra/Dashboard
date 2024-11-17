import 'package:dashboard/utils/colors_pallete.dart';
import 'package:flutter/material.dart';

class CardIndicatorWidget extends StatelessWidget {
  final bool isActive;

  const CardIndicatorWidget({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? ColorsPallete.kBlueSky : ColorsPallete.kPlatinum,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
