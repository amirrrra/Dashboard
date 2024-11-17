import 'package:dashboard/widgets/card_indicator_widget.dart';
import 'package:flutter/material.dart';

class CardIndicatorListWidget extends StatelessWidget {
  final int activeIndex;
  const CardIndicatorListWidget({
    super.key,
    required this.activeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CardIndicatorWidget(
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}
