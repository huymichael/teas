import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teas_store/src/routes/route_path.dart';
import 'package:teas_store/src/shared/widgets/background_image.widget.dart';
import 'package:teas_store/src/shared/widgets/rounded_button.widget.dart';
import 'package:teas_store/src/shared/widgets/rounded_outline_button.widget.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';
import 'package:teas_store/src/utils/constants/images.constant.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: <Widget>[
          BackgroundImage(
            imgUrl: ImageConstant.START_SCREEN_BACKGROUND,
            colorFilter: ColorConstant.DARK_FILTER,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 80.0,
                  child: Image.asset(ImageConstant.LOGO),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    RoundedButton(
                      buttonLabel: 'Log In',
                      buttonLabelStyle: TextStyle(color: Colors.white),
                      buttonColor: ColorConstant.DEFAULT,
                      onPress: () {
                        Navigator.pushNamed(context, RoutePath.loginRoute,
                            arguments: 'Data Passed');
                      },
                    ),
                    RoundedOutlineButton(
                      buttonLabel: 'Sign Up',
                      buttonLabelStyle: TextStyle(color: ColorConstant.DEFAULT),
                      onPress: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
