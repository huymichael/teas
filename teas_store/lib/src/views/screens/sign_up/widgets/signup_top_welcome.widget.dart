import 'package:flutter/material.dart';
import 'package:teas_store/src/shared/widgets/spacer.widget.dart';
import 'package:teas_store/src/utils/constants/images.constant.dart';
import 'package:teas_store/src/utils/constants/text_style.constant.dart';

class SignUpTopWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            child: Image.asset(ImageConstant.LOGO),
            radius: 60.0,
            backgroundColor: Colors.white,
          ),
          WidgetSpacer(
            height: 20.0,
          ),
          Text(
            'Hello there!',
            style: TextStyleConstant.BOLD_TITLE_30,
          ),
          Text('Let\'s setup your account!',
              style: TextStyleConstant.REGULAR_TITLE_20),
        ],
      ),
    );
  }
}
