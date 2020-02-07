import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';
import 'package:teas_store/src/utils/constants/fonts.constant.dart';

class TextStyleConstant {
  static final SPLASH_TITLE = FontConstant.Eater.copyWith(
      color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 30.0);

  static final ANCHOR_TEXT =
      FontConstant.Italic.copyWith(color: ColorConstant.DEFAULT_LIGHT);
}
