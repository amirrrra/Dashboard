import 'package:dashboard/widgets/card_item_widget.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class CardPageviewWidget extends StatelessWidget {
  final PageController pageController;
  const CardPageviewWidget({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => const CardItemWidget(),
      ),
    );
  }
}
