import 'package:dashboard/utils/assets_data.dart';
import 'package:dashboard/utils/colors_pallete.dart';
import 'package:dashboard/widgets/card_content_widget.dart';
import 'package:dashboard/widgets/card_indicator_widget.dart';
import 'package:dashboard/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

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
            AspectRatio(
              aspectRatio: 420 / 215,
              child: Container(
                decoration: const ShapeDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.kCardBackground),
                  ),
                  color: ColorsPallete.kBlueSky,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                child: const CardContentWidget(),
              ),
            )
          ,const SizedBox(height: 19),
          const CardIndicatorWidget()
          ],
        ),
      ),
    );
  }
}
