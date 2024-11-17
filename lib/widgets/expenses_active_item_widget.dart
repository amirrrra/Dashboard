import 'package:dashboard/models/expenses_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/colors_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpensesActiveItemWidget extends StatelessWidget {
  final ExpensesModel expensesModel;
  const ExpensesActiveItemWidget({super.key, required this.expensesModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: const ShapeDecoration(
        color: ColorsPallete.kBlueSky,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: ColorsPallete.kBlueSky),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                expensesModel.image,
                colorFilter: const ColorFilter.mode(
                  ColorsPallete.kWhite,
                  BlendMode.srcIn,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorsPallete.kWhite,
              ),
            ],
          ),
          const SizedBox(height: 34),
          Text(
            expensesModel.title,
            style: AppStyles.semiBold16(context).copyWith(
              color: ColorsPallete.kWhite,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            expensesModel.history,
            style: AppStyles.regular14(context).copyWith(
              color: ColorsPallete.kWhite,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            expensesModel.price,
            style: AppStyles.semiBold24(context).copyWith(
              color: ColorsPallete.kWhite,
            ),
          )
        ],
      ),
    );
  }
}
