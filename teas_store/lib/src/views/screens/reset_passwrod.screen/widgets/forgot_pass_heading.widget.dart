import 'package:flutter/material.dart';
import 'package:teas_store/src/utils/constants/images.constant.dart';
import 'package:teas_store/src/utils/constants/text_style.constant.dart';

class ForgotPasswordHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
      child: Column(
        children: <Widget>[
          Text(
            'Forgot you password ?',
            style: TextStyleConstant.TITLE_BOLD_20,
          ),
          CircleAvatar(
            child: Image.asset(ImageConstant.FORGOT_PASS_LOGO),
            backgroundColor: Colors.transparent,
            radius: 70.0,
          )
        ],
      ),
    );
  }
}
