import 'package:flutter/material.dart';

class WidgetSpacer extends StatelessWidget {
  WidgetSpacer({this.width, this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 0,
      height: width ?? 0,
    );
  }
}
