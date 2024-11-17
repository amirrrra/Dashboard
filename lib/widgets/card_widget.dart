import 'package:dashboard/utils/colors_pallete.dart';
import 'package:dashboard/widgets/card_indicator_list_widget.dart';
import 'package:dashboard/widgets/card_pageview_widget.dart';
import 'package:dashboard/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  late PageController pageController;
  int activeIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        activeIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          color: ColorsPallete.kWhite,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderWidget(title: 'My card'),
            const SizedBox(height: 20),
            CardPageviewWidget(
              pageController: pageController,
            ),
            const SizedBox(height: 19),
            CardIndicatorListWidget(
              activeIndex: activeIndex,
            )
          ],
        ),
      ),
    );
  }
}
