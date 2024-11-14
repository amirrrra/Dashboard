import 'package:dashboard/utils/size_config.dart';
import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  const AdaptiveLayoutWidget({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < SizeConfig.tablet) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
