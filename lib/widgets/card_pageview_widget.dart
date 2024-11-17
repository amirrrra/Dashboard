import 'package:dashboard/widgets/card_widget.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class CardPageviewWidget extends StatelessWidget {
  const CardPageviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => const CardWidget(),
      ),
    );
  }
}
