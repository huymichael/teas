import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teas_store/src/routes/route_path.dart';
import 'package:teas_store/src/shared/widgets/background_image.widget.dart';
import 'package:teas_store/src/shared/widgets/spacer.widget.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';
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
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          BackgroundImage(
            imgUrl: ImageConstant.LOGIN_SCREEN_BACKGROUND,
            colorFilter: ColorConstant.DARK_FILTER,
            backgroundFit: BoxFit.contain,
            backgrounAlign: Alignment.topCenter,
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
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontFamily: 'OpenSans Bold'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: IconButton(
              onPressed: (){
                Navigator.pushNamed(context, RoutePath.homeRoute);
              },
              icon: Icon(Icons.close,color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}
