import 'package:flutter/material.dart';
import 'package:teas_store/src/shared/widgets/background_image.widget.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';
import 'package:teas_store/src/utils/constants/images.constant.dart';
import 'package:teas_store/src/views/screens/reset_passwrod.screen/widgets/forgot_pass_heading.widget.dart';
import 'package:teas_store/src/views/screens/reset_passwrod.screen/widgets/forgot_pass_section.widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          Container(
            height: _screenHeight * 0.5,
            child: BackgroundImage(
              imgUrl: ImageConstant.FORGOT_PASS_BACKGROUND,
              backgroundFit: BoxFit.fitWidth,
              colorFilter: ColorConstant.DARK_FILTER,
              backgrounAlign: Alignment.topCenter,
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              width: _screenWidth,
              height: _screenHeight,
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    _buildTopHeading(),
                    _buildForgotPassSection(),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
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

  _buildTopHeading() => ForgotPasswordHeading();

  _buildForgotPassSection() => ForgotPasswordSection();
}
