import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/assets_data.dart';
import 'package:dashboard/widgets/drawer_item_widget.dart';
import 'package:flutter/material.dart';

class DrawerItemsListWidget extends StatefulWidget {
  const DrawerItemsListWidget({super.key});

  @override
  State<DrawerItemsListWidget> createState() => _DrawerItemsListWidgetState();
}

class _DrawerItemsListWidgetState extends State<DrawerItemsListWidget> {
  int selectedIndex = 0;
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(icon: AssetsData.kDashboard, title: 'Dashboard'),
    DrawerItemModel(icon: AssetsData.kTransctions, title: 'Transctions'),
    DrawerItemModel(icon: AssetsData.kStatistics, title: 'Statistics'),
    DrawerItemModel(icon: AssetsData.kWallet, title: 'Wallet'),
    DrawerItemModel(icon: AssetsData.kInvestments, title: 'Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: drawerItems.asMap().entries.map((e) {
        int index = e.key;
        DrawerItemModel item = e.value;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 2,
            ),
            child: DrawerItemWidget(
              drawerItemModel: item,
              isActive: selectedIndex == index,
            ),
          ),
        );
      }).toList(),
    );
  }
}
