import 'package:dashboard/utils/colors_pallete.dart';
import 'package:dashboard/utils/size_config.dart';
import 'package:flutter/widgets.dart';

abstract class AppStyles {
  static TextStyle regular16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 12),
      fontWeight: FontWeight.w400,
      color: ColorsPallete.kGrayLight,
    );
  }

  static TextStyle regular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle medium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 20),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle semiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
      fontWeight: FontWeight.w700,
    );
  }
}

double getResponsiveFontSize(BuildContext context, double fontSize) {
  var scaleFactor = getScaleFactor(context);
  var responsiveFontSize = fontSize * scaleFactor;
  var lowerLimit = fontSize * .8;
  var upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit); //Apply limitations
}

double getScaleFactor(BuildContext context) {
  final double screenWidth = MediaQuery.sizeOf(context).width;
  if (screenWidth < SizeConfig.tablet) {
    return screenWidth / 550; // Mobile Scale Factor
  } else if (screenWidth < SizeConfig.desktop) {
    return screenWidth / 1000; // Tablet Scale Factor
  } else {
    return screenWidth / 1500; // Desktop Scale Factor
  }
}
