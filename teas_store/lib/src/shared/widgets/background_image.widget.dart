import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  BackgroundImage(
      {@required this.imgUrl,
      this.colorFilter,
      this.backgroundFit,
      this.backgroundAlign,
      this.widget});

  final String imgUrl;
  final ColorFilter colorFilter;
  final BoxFit backgroundFit;
  final Alignment backgroundAlign;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              imgUrl,
            ),
            colorFilter: colorFilter,
            fit: backgroundFit ?? BoxFit.cover,
            alignment: backgroundAlign ?? Alignment.center),
      ),
      child: widget,
    );
  }
}
