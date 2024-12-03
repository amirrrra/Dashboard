import 'package:dashboard/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final void Function() onPressed;
  const AppBarWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: onPressed,
        icon: const Icon(Icons.menu),
      ),
      backgroundColor: AppColors.kWhiteOff,
      surfaceTintColor: AppColors.kWhiteOff,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
