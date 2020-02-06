import 'package:flutter/material.dart';
import 'package:teas_store/src/shared/widgets/background_image.widget.dart';
import 'package:teas_store/src/shared/widgets/spacer.widget.dart';
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
      body: Stack(
        children: <Widget>[
          BackgroundImage(
            imgUrl: ImageConstant.LOGIN_SCREEN_BACKGROUND,
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        child: Image.asset(ImageConstant.LOGO),
                        backgroundColor: Colors.white,
                        radius: 60.0,
                      ),
                      WidgetSpacer(
                        height: 20.0,
                      ),
                      Text(
                        'Welcome Back!',
                        style: TextStyle(color: Colors.white, fontSize: 30.0),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          TextFormField(),
                          TextFormField(),
                          TextFormField(),
                          TextFormField(),
                        ],
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
