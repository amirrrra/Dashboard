import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/assets_data.dart';
import 'package:dashboard/widgets/drawer_inactive_item_widget.dart';
import 'package:flutter/material.dart';

class DrawerTrailingItemsWidget extends StatelessWidget {
  const DrawerTrailingItemsWidget({super.key});

  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(icon: AssetsData.kSettings, title: 'Setting system'),
    DrawerItemModel(icon: AssetsData.kLogout, title: 'Logout account'),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: drawerItems.map((e) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 2,
          ),
          child: DrawerInactiveItemWidget(
            drawerItemModel: e,
          ),
        );
      }).toList(),
    );
  }
}
