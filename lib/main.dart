import 'package:dashboard/utils/colors_pallete.dart';
import 'package:dashboard/utils/constants.dart';
import 'package:dashboard/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontFamily: Constants.kMontserrat,
            color: ColorsPallete.kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
