import 'package:dashboard/models/transaction_model.dart';
import 'package:dashboard/widgets/transaction_item_widget.dart';
import 'package:flutter/material.dart';

class TransactionListWidget extends StatelessWidget {
  const TransactionListWidget({super.key});

  static const transactionItems = [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 at 3:30 PM',
      price: '20,129',
      isWithdrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      price: '2,000',
      isWithdrawal: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      price: '20,129',
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        3,
        (index) => TransactionItemWidget(
          transactionModel: transactionItems[index],
        ),
      ),
    );
  }
}
