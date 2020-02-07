import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FontConstant {
  static const REGULAR = TextStyle(
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      color: Colors.black);
  static const BOLD = TextStyle(
      fontFamily: 'OpenSans Bold',
      fontWeight: FontWeight.bold,
      color: Colors.black);
  static const Italic = TextStyle(
      fontFamily: 'OpenSans Italic',
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.italic,
      color: Colors.black);
  static const Eater = TextStyle(fontFamily: 'Eater', color: Colors.black);
}
