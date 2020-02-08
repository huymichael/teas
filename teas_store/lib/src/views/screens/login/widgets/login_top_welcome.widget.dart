import 'package:flutter/material.dart';
import 'package:teas_store/src/shared/widgets/spacer.widget.dart';
import 'package:teas_store/src/utils/constants/images.constant.dart';
import 'package:teas_store/src/utils/constants/text_style.constant.dart';

class LoginTopWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
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
            style: TextStyleConstant.TITLE_BOLD_30,
          ),
        ],
      ),
    );
  }
}
