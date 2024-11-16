import 'package:dashboard/utils/colors_pallete.dart';
import 'package:dashboard/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: ColorsPallete.kWhite,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(
            title: 'My card',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
