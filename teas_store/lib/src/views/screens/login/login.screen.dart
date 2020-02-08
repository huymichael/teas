import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teas_store/src/routes/route_path.dart';
import 'package:teas_store/src/shared/widgets/background_image.widget.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';
import 'package:teas_store/src/utils/constants/images.constant.dart';
import 'package:teas_store/src/views/screens/login/widgets/login_section.widget.dart';
import 'package:teas_store/src/views/screens/login/widgets/login_top_welcome.widget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          Container(
            height: _screenHeight * 0.5,
            child: BackgroundImage(
              imgUrl: ImageConstant.LOGIN_SCREEN_BACKGROUND,
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    _buildTopWelcome(),
                    _buildLoginSection(),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutePath.homeRoute);
              },
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildTopWelcome() => LoginTopWelcome();
  _buildLoginSection() => LoginSection();
}
