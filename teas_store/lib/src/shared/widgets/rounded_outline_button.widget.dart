import 'package:flutter/material.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';

class RoundedOutlineButton extends StatelessWidget {
  RoundedOutlineButton(
      {@required this.buttonLabel,
      this.height,
      this.buttonLabelStyle,
      this.buttonFillColor,
      this.buttonOutlineColor,
      @required this.onPress});

  final String buttonLabel;
  final TextStyle buttonLabelStyle;
  final Function onPress;
  final Color buttonFillColor;
  final Color buttonOutlineColor;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(
              color: buttonOutlineColor ?? ColorConstant.DEFAULT,
              width: 1.0,
              style: BorderStyle.solid),
        ),
        child: Text(
          buttonLabel,
          style: buttonLabelStyle,
        ),
        onPressed: onPress,
        color: buttonFillColor ?? Colors.white,
      ),
    );
  }
}
