import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/assets_data.dart';
import 'package:dashboard/widgets/user_info_widget.dart';
import 'package:flutter/material.dart';

class InvoiceTransactionListWidget extends StatelessWidget {
  const InvoiceTransactionListWidget({super.key});

  static const invoicesItems = [
    UserInfoModel(
      name: 'Madrani Andi',
      gmail: 'madraniadi20@gmail',
      image: AssetsData.kAvatar1,
    ),
    UserInfoModel(
      name: 'Josua Nunito',
      gmail: 'joshnunito@gmail.com',
      image: AssetsData.kAvatar2,
    ),
    UserInfoModel(
      name: 'Madrani Andi',
      gmail: 'madraniadi20@gmail',
      image: AssetsData.kAvatar1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: invoicesItems
            .map(
              (e) => IntrinsicWidth(child: UserInfoWidget(userInfoModel: e)),
            )
            .toList(),
      ),
    );
  }
}
