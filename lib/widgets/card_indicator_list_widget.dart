import 'package:dashboard/widgets/card_indicator_widget.dart';
import 'package:flutter/material.dart';

class CardIndicatorListWidget extends StatelessWidget {
  const CardIndicatorListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.only(right: 8),
          child: CardIndicatorWidget(),
        ),
      ),
    );
  }
}
