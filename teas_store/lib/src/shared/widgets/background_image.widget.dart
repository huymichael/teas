import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  BackgroundImage({@required this.imgUrl, this.colorFilter});

  final String imgUrl;
  final ColorFilter colorFilter;

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
            fit: BoxFit.cover),
      ),
    );
  }
}
