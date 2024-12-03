import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/fittedbox_widget.dart';
import 'package:dashboard/widgets/listtile_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoWidget extends StatelessWidget {
  final UserInfoModel userInfoModel;
  const UserInfoWidget({super.key, required this.userInfoModel});

  @override
  Widget build(BuildContext context) {
    return ListtileCardWidget(
      child: ListTile(
        leading: SvgPicture.asset(
          userInfoModel.image,
        ),
        title: FittedboxWidget(
          child: Text(
            userInfoModel.name,
            style: AppStyles.semiBold16(context),
          ),
        ),
        subtitle: FittedboxWidget(
          child: Text(
            userInfoModel.gmail,
            style: AppStyles.regular12(context),
          ),
        ),
      ),
    );
  }
}
