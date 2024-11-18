import 'package:dashboard/models/transaction_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/colors_pallete.dart';
import 'package:dashboard/widgets/listtile_card_widget.dart';
import 'package:flutter/material.dart';

class TransactionItemWidget extends StatelessWidget {
  final TransactionModel transactionModel;
  const TransactionItemWidget({
    super.key,
    required this.transactionModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListtileCardWidget(
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.semiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.regular16(context).copyWith(
            color: ColorsPallete.kGrayLight,
          ),
        ),
        trailing: Text(
          '\$${transactionModel.price}',
          style: AppStyles.semiBold20(context).copyWith(
            color: transactionModel.isWithdrawal
                ? ColorsPallete.kPinkSalmon
                : ColorsPallete.kGreenMint,
          ),
        ),
      ),
    );
  }
}
