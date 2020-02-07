import 'package:flutter/material.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';
import 'package:teas_store/src/utils/constants/fonts.constant.dart';

class AppTheme {
  static final TextTheme textTheme = TextTheme(
    headline: FontConstant.BOLD,
    title: FontConstant.BOLD,
    subtitle: FontConstant.Italic,
    subhead: FontConstant.Italic,
    body1: FontConstant.REGULAR,
  );

  static final customTheme = ThemeData(
      primaryColor: ColorConstant.DEFAULT,
      accentColor: ColorConstant.DEFAULT,
      scaffoldBackgroundColor: ColorConstant.SMOKE,
      brightness: Brightness.light,
      textTheme: textTheme);
}
