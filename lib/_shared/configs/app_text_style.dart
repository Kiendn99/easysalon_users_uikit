import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../_shared.dart';

class AppTextStyle {
  static final textFontApp = GoogleFonts.robotoTextTheme();

  static TextStyle smallRegular({Color? color}) => TextStyle(
      fontSize: LayoutNotifier().sizeToFontSize(LayoutSize.small),
      color: color);
  static TextStyle smallMedium({Color? color}) => TextStyle(
      fontSize: LayoutNotifier().sizeToFontSize(LayoutSize.small),
      fontWeight: FontWeight.w500,
      color: color);
  static TextStyle smallBold({Color? color}) => TextStyle(
      fontSize: LayoutNotifier().sizeToFontSize(LayoutSize.small),
      fontWeight: FontWeight.bold,
      color: color);

  static TextStyle mediumRegular({Color? color}) => TextStyle(
      fontSize: LayoutNotifier().sizeToFontSize(LayoutSize.medium),
      color: color);
  static TextStyle mediumMedium({Color? color}) => TextStyle(
      fontSize: LayoutNotifier().sizeToFontSize(LayoutSize.medium),
      fontWeight: FontWeight.w500,
      color: color);
  static TextStyle mediumBold({Color? color}) => TextStyle(
      fontSize: LayoutNotifier().sizeToFontSize(LayoutSize.medium),
      fontWeight: FontWeight.bold,
      color: color);

  static TextStyle largeRegular({Color? color}) => TextStyle(
      fontSize: LayoutNotifier().sizeToFontSize(LayoutSize.large),
      color: color);
  static TextStyle largeMedium({Color? color}) => TextStyle(
      fontSize: LayoutNotifier().sizeToFontSize(LayoutSize.large),
      fontWeight: FontWeight.w500,
      color: color);
  static TextStyle largeBold({Color? color}) => TextStyle(
      fontSize: LayoutNotifier().sizeToFontSize(LayoutSize.large),
      fontWeight: FontWeight.bold,
      color: color);

  static TextStyle bigRegular({Color? color}) => TextStyle(
      fontSize: LayoutNotifier().sizeToFontSize(LayoutSize.big), color: color);
  static TextStyle bigMedium({Color? color}) => TextStyle(
      fontSize: LayoutNotifier().sizeToFontSize(LayoutSize.big),
      fontWeight: FontWeight.w500,
      color: color);
  static TextStyle bigBold({Color? color}) => TextStyle(
      fontSize: LayoutNotifier().sizeToFontSize(LayoutSize.big),
      fontWeight: FontWeight.bold,
      color: color);

  static TextStyle defaultRegular({Color? color}) =>
      TextStyle(fontSize: 28.sp, color: color);
  static TextStyle defaultMedium({Color? color}) =>
      TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w500, color: color);
  static TextStyle defaultBold({Color? color}) =>
      TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold, color: color);
}
