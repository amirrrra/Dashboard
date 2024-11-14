import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/app_pics.dart';
import 'package:dashboard/utils/colors_pallete.dart';
import 'package:dashboard/widgets/user_info_widget.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: ColorsPallete.kWhite),
      padding: EdgeInsets.only(left: 28,right: 20),
      child: Column(
        children: [
          UserInfoWidget(
            userInfoModel: UserInfoModel(
              image: AssetsData.kPicsAvatar3,
              name: 'Lekan Okeowo',
              gmail: 'demo@gmail.com',
            ),
          ),
        ],
      ),
    );
  }
}
