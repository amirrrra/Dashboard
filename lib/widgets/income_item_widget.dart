import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/colors_pallete.dart';
import 'package:flutter/material.dart';

class IncomeItemWidget extends StatelessWidget {
  const IncomeItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(      
      leading: Container(
        width: 12,
        height: 12,
        decoration: const ShapeDecoration(
          color: ColorsPallete.kBlueMedium,
          shape: OvalBorder(),
        ),
      ),
      title: Text(
        'Design service',
        style: AppStyles.regular16(context),
      ),
      trailing: Text(
        '40%',
        style: AppStyles.medium16(context).copyWith(
          color: ColorsPallete.kBlueSky,
        ),
      ),
    );
  }
}
