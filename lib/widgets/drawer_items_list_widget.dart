import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/assets_data.dart';
import 'package:dashboard/widgets/drawer_active_item_widget.dart';
import 'package:flutter/material.dart';

class DrawerItemsListWidget extends StatefulWidget {
  const DrawerItemsListWidget({super.key});

  @override
  State<DrawerItemsListWidget> createState() => _DrawerItemsListWidgetState();
}

class _DrawerItemsListWidgetState extends State<DrawerItemsListWidget> {
  int activeIndex = 0;
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(icon: AssetsData.kDashboard, title: 'Dashboard'),
    DrawerItemModel(icon: AssetsData.kTransctions, title: 'My Transctions'),
    DrawerItemModel(icon: AssetsData.kStatistics, title: 'Statistics'),
    DrawerItemModel(icon: AssetsData.kWallet, title: 'Wallet Account'),
    DrawerItemModel(icon: AssetsData.kInvestments, title: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: drawerItems.map((e) {
        return DrawerActiveItemWidget(
          drawerItemModel: e,
        );
      }).toList(),
    );
  }
}
