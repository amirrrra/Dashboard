import 'package:dashboard/models/expenses_model.dart';
import 'package:dashboard/utils/assets_data.dart';
import 'package:dashboard/widgets/expenses_item_widget.dart';
import 'package:flutter/material.dart';

class ExpensesListWidget extends StatefulWidget {
  const ExpensesListWidget({super.key});

  @override
  State<ExpensesListWidget> createState() => _ExpensesListWidgetState();
}

class _ExpensesListWidgetState extends State<ExpensesListWidget> {
  int activeIndex = -1;
  final expensesItems = const [
    ExpensesModel(
        title: 'Balance',
        history: 'April 2022',
        price: r'$20,129',
        image: AssetsData.kBalance),
    ExpensesModel(
        title: 'Income',
        history: 'April 2022',
        price: r'$20,129',
        image: AssetsData.kIncome),
    ExpensesModel(
      title: 'Expenses',
      history: 'April 2022',
      price: r'$20,129',
      image: AssetsData.kExpenses,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        expensesItems.length * 2 - 1, // 3 items + 2 space
        (index) {
          if (index.isEven) {
            final itemIndex = index ~/ 2; /* 1~/2=0 ==== 3~/2=1 */
            return Expanded(
              child: GestureDetector(
                onTap: () => updateIndex(itemIndex),
                child: ExpensesItemWidget(
                  isActive: activeIndex == itemIndex,
                  expensesModel: expensesItems[itemIndex],
                ),
              ),
            );
          } else {
            return const SizedBox(width: 12); 
          }
        },
      ),
    );
  }

  void updateIndex(int index) {
    setState(() {
      activeIndex = index;
    });
  }
}
