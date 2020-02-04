import 'package:flutter/material.dart';
import 'package:teas_store/src/shared/widgets/background_image.widget.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundImage(
            imgUrl: 'assets/images/wall_13.jpg',
            colorFilter: ColorFilter.mode(
                Colors.black54.withOpacity(0.3), BlendMode.darken),
          ),
        ],
      ),
    );
  }
}
