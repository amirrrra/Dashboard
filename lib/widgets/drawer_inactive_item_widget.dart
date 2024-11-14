import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerInactiveItemWidget extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  const DrawerInactiveItemWidget({
    super.key,
    required this.drawerItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.icon,
      ),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.regular16(context),
      ),
     
    );
  }
}
