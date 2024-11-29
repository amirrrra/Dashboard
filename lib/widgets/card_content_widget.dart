import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardContentWidget extends StatelessWidget {
  const CardContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            minTileHeight: 0,
            contentPadding: const EdgeInsets.all(0),
            minVerticalPadding: 0,
            title: Text(
              'Name card',
              style: getRegular16(context),
            ),
            subtitle: Text(
              'Syah Bandi',
              style: AppStyles.medium20(context),
            ),
            trailing: SvgPicture.asset(AssetsData.kGallery),
          ),
          const Spacer(),
          Text(
            '0918 8124 0042 8129',
            style: AppStyles.semiBold24(context),
          ),
          const SizedBox(height: 12),
          Text(
            '12/20 - 124',
            style: getRegular16(context),
          )
        ],
      ),
    );
  }

  TextStyle getRegular16(BuildContext context) =>
      AppStyles.regular16(context).copyWith(color: AppColors.kWhite);
}
