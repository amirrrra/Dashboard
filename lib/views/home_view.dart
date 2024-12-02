import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/widgets/adaptive_layout_widget.dart';
import 'package:dashboard/widgets/layout_desktop_widget.dart';
import 'package:dashboard/widgets/layout_mobile_widget.dart';
import 'package:dashboard/widgets/layout_tablet_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteOff,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const LayoutMobileWidget(),
        tabletLayout: (context) => const LayoutTabletWidget(),
        desktopLayout: (context) => const LayoutDesktopWidget(),
      ),
    );
  }
}
