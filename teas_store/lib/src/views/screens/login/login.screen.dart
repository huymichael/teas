import 'package:flutter/material.dart';
import 'package:teas_store/src/shared/widgets/background_image.widget.dart';
import 'package:teas_store/src/utils/constants/images.constant.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: <Widget>[
            Container(
              width: double.maxFinite,
              height: _screenHeight,
              child: BackgroundImage(
                imgUrl: ImageConstant.LOGIN_SCREEN_BACKGROUND,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
