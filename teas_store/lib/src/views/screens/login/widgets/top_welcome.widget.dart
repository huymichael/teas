import 'package:flutter/material.dart';
import 'package:teas_store/src/shared/widgets/spacer.widget.dart';
import 'package:teas_store/src/utils/constants/images.constant.dart';

class TopWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
