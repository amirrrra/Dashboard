import 'package:dashboard/models/drawer_model.dart';
import 'package:dashboard/widgets/drawer_active_item_widget.dart';
import 'package:dashboard/widgets/drawer_inactive_item_widget.dart';
import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  final bool isActive;
  final DrawerModel drawerModel;
  const DrawerItemWidget({
    super.key,
    required this.isActive,
    required this.drawerModel,
  });

  @override
  Widget build(BuildContext context) {
    return isActive
        ? DrawerActiveItemWidget(drawerModel: drawerModel)
        : DrawerInactiveItemWidget(drawerModel: drawerModel);
  }
}
