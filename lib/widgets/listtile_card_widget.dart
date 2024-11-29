import 'package:dashboard/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ListtileCardWidget extends StatelessWidget {
  final Widget? child;
  const ListtileCardWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: AppColors.kWhiteSmoke,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: child,
    );
  }
}