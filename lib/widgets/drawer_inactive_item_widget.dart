import 'package:dashboard/models/drawer_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerInactiveItemWidget extends StatelessWidget {
  final DrawerModel drawerModel;
  const DrawerInactiveItemWidget({
    super.key,
    required this.drawerModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerModel.icon,
      ),
      title: Text(
        drawerModel.title,
        style: AppStyles.regular16(context),
      ),
     
    );
  }
}
