import 'package:dashboard/models/expenses_model.dart';
import 'package:dashboard/widgets/expenses_active_item_widget.dart';
import 'package:dashboard/widgets/expenses_inactive_item_widget.dart';
import 'package:flutter/widgets.dart';

class ExpensesItemWidget extends StatelessWidget {
  final ExpensesModel expensesModel;
  final bool isActive;
  const ExpensesItemWidget(
      {super.key, required this.isActive, required this.expensesModel});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ExpensesActiveItemWidget(expensesModel: expensesModel)
        : ExpensesInactiveItemWidget(expensesModel: expensesModel);
  }
}
