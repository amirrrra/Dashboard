import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/assets_data.dart';
import 'package:dashboard/utils/colors_pallete.dart';
import 'package:dashboard/widgets/drawer_active_item_widget.dart';
import 'package:dashboard/widgets/drawer_inactive_item_widget.dart';
import 'package:dashboard/widgets/user_info_widget.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: ColorsPallete.kWhite),
      padding: const EdgeInsets.only(left: 12, right: 20),
      child: Column(
        children: [
          UserInfoWidget(
            userInfoModel: UserInfoModel(
              image: AssetsData.kAvatar3,
              name: 'Lekan Okeowo',
              gmail: 'demo@gmail.com',
            ),
          ),
          DrawerActiveItemWidget(
            drawerItemModel: DrawerItemModel(
              icon: AssetsData.kDashboard,
              title: 'Dashboard',
            ),
          ),
          DrawerInactiveItemWidget(
            drawerItemModel: DrawerItemModel(
              icon: AssetsData.kTransctions,
              title: 'My Transctions',
            ),
          ),
        ],
      ),
    );
  }
}
