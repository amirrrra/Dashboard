import 'package:dashboard/utils/assets_data.dart';
import 'package:dashboard/utils/colors_pallete.dart';
import 'package:dashboard/widgets/card_content_widget.dart';
import 'package:flutter/material.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.kCardBackground),
          ),
          color: ColorsPallete.kBlueSky,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: const CardContentWidget(),
      ),
    );
  }
}
