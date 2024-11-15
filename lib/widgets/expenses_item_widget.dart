import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/assets_data.dart';
import 'package:dashboard/utils/colors_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpensesItemWidget extends StatelessWidget {
  const ExpensesItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 216,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: const ShapeDecoration(
        // color: ColorsPallete.kBlueSky,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: ColorsPallete.kGrayWhisper),
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(AssetsData.kBalance),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorsPallete.kPrimaryColor,
              ),
            ],
          ),
          const Spacer(),
          Text(
            'Income',
            style: AppStyles.semiBold16(context),
          ),
          const SizedBox(height: 8),
          Text(
            'April 2022',
            style: AppStyles.regular14(context),
          ),
          const SizedBox(height: 16),
          Text(
            r'$20,129',
            style: AppStyles.semiBold24(context),
          )
        ],
      ),
    );
  }
}
