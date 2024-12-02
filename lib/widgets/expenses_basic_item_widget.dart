import 'package:dashboard/models/expenses_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/fittedbox_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpensesBasicItemWidget extends StatelessWidget {
  final ExpensesModel expensesModel;
  final Color borderColor;
  final Color? iconColor;
  final Color? titleColor;
  final Color? historyColor;
  final Color? containerColor;

  const ExpensesBasicItemWidget({
    super.key,
    required this.expensesModel,
    required this.borderColor,
    this.iconColor,
    this.titleColor,
    this.historyColor,
    this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: containerColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: SvgPicture.asset(
                  expensesModel.image,
                  fit: BoxFit.scaleDown,
                  colorFilter: ColorFilter.mode(
                    iconColor!,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Flexible(
                child: FittedboxWidget(
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: titleColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          FittedboxWidget(
            child: Text(
              expensesModel.title,
              style: AppStyles.semiBold16(context).copyWith(
                color: titleColor,
              ),
            ),
          ),
          const SizedBox(height: 8),
          FittedboxWidget(
            child: Text(
              expensesModel.history,
              style: AppStyles.regular14(context).copyWith(
                color: historyColor,
              ),
            ),
          ),
          const SizedBox(height: 16),
          FittedboxWidget(
            child: Text(
              expensesModel.price,
              style: AppStyles.semiBold24(context).copyWith(
                color: iconColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
