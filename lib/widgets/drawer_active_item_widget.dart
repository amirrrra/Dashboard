import 'package:dashboard/models/drawer_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/colors_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerActiveItemWidget extends StatelessWidget {
  final DrawerModel drawerModel;
  const DrawerActiveItemWidget({
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
        style: AppStyles.bold16(context),
      ),
      trailing: Container(
        width: 3.27,
        color: ColorsPallete.kBlueSky,
      ),
    );
  }
}
