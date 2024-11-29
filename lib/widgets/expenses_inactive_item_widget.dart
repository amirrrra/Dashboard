import 'package:dashboard/models/expenses_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpensesInactiveItemWidget extends StatelessWidget {
  final ExpensesModel expensesModel;
  const ExpensesInactiveItemWidget({super.key, required this.expensesModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColors.kGrayWhisper),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(expensesModel.image),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.kPrimaryColor,
              ),
            ],
          ),
          const SizedBox(height: 34),
          Text(
            expensesModel.title,
            style: AppStyles.semiBold16(context),
          ),
          const SizedBox(height: 8),
          Text(
            expensesModel.history,
            style: AppStyles.regular14(context),
          ),
          const SizedBox(height: 16),
          Text(
            expensesModel.price,
            style: AppStyles.semiBold24(context).copyWith(
              color: AppColors.kBlueSky,
            ),
          )
        ],
      ),
    );
  }
}
