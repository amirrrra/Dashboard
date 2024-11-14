import 'package:dashboard/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class DesktopLayoutWidget extends StatelessWidget {
  const DesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: DrawerWidget()),
      ],
    );
  }
}
