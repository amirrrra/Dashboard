import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/colors_pallete.dart';
import 'package:dashboard/widgets/listtile_card_widget.dart';
import 'package:flutter/material.dart';

class TransactionItemWidget extends StatelessWidget {
  const TransactionItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListtileCardWidget(
      child: ListTile(
        title: Text(
          'Cash Withdrawal',
          style: AppStyles.semiBold16(context),
        ),
        subtitle: Text(
          '13 Apr, 2022 ',
          style: AppStyles.regular16(context).copyWith(
            color: ColorsPallete.kGrayLight,
          ),
        ),
        trailing: Text(
          '\$20,129',
          style: AppStyles.semiBold20(context).copyWith(
            color: ColorsPallete.kGreenMint,
          ),
        ),
      ),
    );
  }
}
