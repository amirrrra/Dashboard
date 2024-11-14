import 'package:dashboard/utils/colors_pallete.dart';
import 'package:dashboard/widgets/adaptive_layout_widget.dart';
import 'package:dashboard/widgets/desktop_layout_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsPallete.kWhiteOff,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopLayoutWidget(),
      ),
    );
  }
}
