import 'dart:developer';

import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/size_config.dart';
import 'package:dashboard/widgets/adaptive_layout_widget.dart';
import 'package:dashboard/widgets/app_bar_widget.dart';
import 'package:dashboard/widgets/drawer_widget.dart';
import 'package:dashboard/widgets/layout_desktop_widget.dart';
import 'package:dashboard/widgets/layout_mobile_widget.dart';
import 'package:dashboard/widgets/layout_tablet_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    log(screenWidth.toString());
    return Scaffold(
      drawer: screenWidth < SizeConfig.tablet ? DrawerWidget() : null,
      appBar: screenWidth < SizeConfig.tablet
          ? AppBarWidget(
              onPressed: () {
                scaffoldKey.currentState?.openDrawer();
              },
            )
          : null,
      key: scaffoldKey,
      backgroundColor: AppColors.kWhiteOff,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const LayoutMobileWidget(),
        tabletLayout: (context) => const LayoutTabletWidget(),
        desktopLayout: (context) => const LayoutDesktopWidget(),
      ),
    );
  }
}
