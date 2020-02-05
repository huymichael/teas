import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {@required this.buttonLabel,
      this.buttonLabelStyle,
      this.buttonColor,
      @required this.onPress});

  final String buttonLabel;
  final TextStyle buttonLabelStyle;
  final Function onPress;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Text(
        buttonLabel,
        style: buttonLabelStyle,
      ),
      onPressed: onPress,
      color: buttonColor,
    );
  }
}
