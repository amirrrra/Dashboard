import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/constants.dart';
import 'package:dashboard/views/home_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const Dashboard(),
    ),
  );
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const HomeView(),
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontFamily: Constants.kMontserrat,
            color: AppColors.kPrimaryColor,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
