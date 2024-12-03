import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/fittedbox_widget.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final Widget? widget;
  const HeaderWidget({
    super.key,
    required this.title,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 2,
          child: FittedboxWidget(
            child: Text(
              title,
              style: AppStyles.semiBold20(context),
            ),
          ),
        ),
        const Spacer(),
        if (widget != null)
          Flexible(
            flex: 2,
            child: widget!,
          ),
      ],
    );
  }
}
