import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/widgets/fittedbox_widget.dart';
import 'package:flutter/material.dart';

class HeaderPeriodicityWidget extends StatelessWidget {
  const HeaderPeriodicityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: AppColors.kWhite,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: AppColors.kGrayWhisper,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: FittedboxWidget(
              child: Text(
                'Monthly',
                style: AppStyles.medium16(context),
              ),
            ),
          ),
          const Flexible(
            child: FittedboxWidget(
              child: Icon(
                Icons.keyboard_arrow_down,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
