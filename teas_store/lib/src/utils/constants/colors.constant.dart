import 'dart:ui';

import 'package:flutter/material.dart';

class ColorConstant {
  //  Basic Color
  static const Color DEFAULT = Color(0xff99332E);
  static const Color DEFAULT_LIGHT = Color(0xffbf403a);
  static const Color DEFAULT_DARK = Color(0xff7a2925);
  static const Color GREEN_COLOR = Color(0xff0d9f67);
  static const Color SMOKE = Color(0xfff3f3f3);

  //Color Filter
  static const ColorFilter DARK_FILTER =
      ColorFilter.mode(Colors.black54, BlendMode.hardLight);

  //Linear Gradient
  static const CHERRY_GRADIENT_COLOR = [Color(0xffeb3349), Color(0xfff45c43)];
  static const MOUNTAIN_ROCK_COLOR = [Color(0xff596164), Color(0xff868f96)];
}
