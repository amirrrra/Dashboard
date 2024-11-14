import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoWidget extends StatelessWidget {
  final UserInfoModel userInfoModel;
  const UserInfoWidget({super.key, required this.userInfoModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        userInfoModel.image,
      ),
      title: Text(
        userInfoModel.name,
        style: AppStyles.semiBold16(context),
      ),
      subtitle: Text(
        userInfoModel.gmail,
        style: AppStyles.regular12(context),
      ),
    );
  }
}
