import 'package:dashboard/models/drawer_model.dart';
import 'package:dashboard/utils/assets_data.dart';
import 'package:dashboard/widgets/drawer_inactive_item_widget.dart';
import 'package:flutter/material.dart';

class DrawerTrailingItemsWidget extends StatelessWidget {
  const DrawerTrailingItemsWidget({super.key});

  static const List<DrawerModel> drawerItems = [
    DrawerModel(icon: AssetsData.kSettings, title: 'Setting system'),
    DrawerModel(icon: AssetsData.kLogout, title: 'Logout account'),
   
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
            drawerModel: e,
          ),
        );
      }).toList(),
    );
  }
}
