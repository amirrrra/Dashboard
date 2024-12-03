import 'package:dashboard/widgets/drawer_widget.dart';
import 'package:dashboard/widgets/layout_mobile_widget.dart';
import 'package:flutter/material.dart';

class LayoutTabletWidget extends StatelessWidget {
  const LayoutTabletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: DrawerWidget(),
        ),
        Expanded(
          flex: 5,
          child: LayoutMobileWidget(),
        ),
      ],
    );
  }
}
