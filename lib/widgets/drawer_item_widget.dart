import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/widgets/drawer_active_item_widget.dart';
import 'package:dashboard/widgets/drawer_inactive_item_widget.dart';
import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  final bool isActive;
  final DrawerItemModel drawerItemModel;
  const DrawerItemWidget({
    super.key,
    required this.isActive,
    required this.drawerItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return isActive
        ? DrawerActiveItemWidget(drawerItemModel: drawerItemModel)
        : DrawerInactiveItemWidget(drawerItemModel: drawerItemModel);
  }
}
