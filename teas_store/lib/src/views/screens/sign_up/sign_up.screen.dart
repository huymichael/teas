import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teas_store/src/routes/route_path.dart';
import 'package:teas_store/src/shared/widgets/background_image.widget.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';
import 'package:teas_store/src/utils/constants/images.constant.dart';
import 'package:teas_store/src/views/screens/sign_up/widgets/signup_top_welcome.widget.dart';

import 'widgets/signup_section.widget.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: _screenHeight * 0.5,
            child: BackgroundImage(
              imgUrl: ImageConstant.SIGN_UP_SCREEN_BACKGROUND,
              colorFilter: ColorConstant.DARK_FILTER,
              backgroundFit: BoxFit.contain,
              backgrounAlign: Alignment.topCenter,
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: _screenHeight,
              width: _screenWidth,
              child: SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    _buildTopWelcome(),
                    _buildSignUpSection(),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutePath.rootRoute);
              },
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildTopWelcome() => SignUpTopWelcome();

  _buildSignUpSection() => SignUpSection();
}
