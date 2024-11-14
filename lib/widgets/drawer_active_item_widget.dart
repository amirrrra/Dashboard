import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/colors_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerActiveItemWidget extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  const DrawerActiveItemWidget({
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
        style: AppStyles.bold16(context),
      ),
      trailing: Container(
        width: 3.27,
        color: ColorsPallete.kBlueSky,
      ),
    );
  }
}
