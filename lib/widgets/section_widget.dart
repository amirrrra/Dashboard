import 'package:dashboard/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final Widget? child;
  const SectionWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: child,
    );
  }
}
