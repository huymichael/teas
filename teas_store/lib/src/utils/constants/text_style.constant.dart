import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';
import 'package:teas_store/src/utils/constants/fonts.constant.dart';

class TextStyleConstant {
  //  Title
  static final TITLE_BOLD_20 =
      FontConstant.BOLD.copyWith(color: Colors.white, fontSize: 20.0);
  static final TITLE_BOLD_30 =
      FontConstant.BOLD.copyWith(color: Colors.white, fontSize: 30.0);
  static final SPLASH_TITLE = FontConstant.Eater.copyWith(
      color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 30.0);
  static final EATER_TITLE_25 = TextStyle(
    fontFamily: 'Eater',
    fontSize: 25.0,
  );

  // Anchor Text
  static final ANCHOR_TEXT =
      FontConstant.Italic.copyWith(color: ColorConstant.DEFAULT_LIGHT);
}
