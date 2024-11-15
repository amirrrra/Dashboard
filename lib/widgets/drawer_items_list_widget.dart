import 'package:dashboard/models/drawer_model.dart';
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
  final List<DrawerModel> drawerItems = const [
    DrawerModel(icon: AssetsData.kDashboard, title: 'Dashboard'),
    DrawerModel(icon: AssetsData.kTransctions, title: 'Transctions'),
    DrawerModel(icon: AssetsData.kStatistics, title: 'Statistics'),
    DrawerModel(icon: AssetsData.kWallet, title: 'Wallet'),
    DrawerModel(icon: AssetsData.kInvestments, title: 'Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: drawerItems.asMap().entries.map((e) {
        int index = e.key;
        DrawerModel item = e.value;
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
              drawerModel: item,
              isActive: selectedIndex == index,
            ),
          ),
        );
      }).toList(),
    );
  }
}
