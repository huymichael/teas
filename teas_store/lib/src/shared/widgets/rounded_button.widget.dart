import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {@required this.buttonLabel,
      this.height,
      this.buttonLabelStyle,
      this.buttonColor,
      @required this.onPress});

  final String buttonLabel;
  final TextStyle buttonLabelStyle;
  final Function onPress;
  final Color buttonColor;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text(
          buttonLabel,
          style: buttonLabelStyle,
        ),
        onPressed: onPress,
        color: buttonColor,
      ),
    );
  }
}
