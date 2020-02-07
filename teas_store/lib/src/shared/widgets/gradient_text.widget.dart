import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  GradientText(
      {@required this.text,
      @required this.gradient,
      this.textStyle,
      this.textAlignment});

  final Gradient gradient;
  final String text;
  final TextStyle textStyle;
  final TextAlign textAlignment;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return gradient.createShader(Offset.zero & bounds.size);
      },
      child: Text(
        text,
        textAlign: textAlignment,
        style: (textStyle == null)
            ? TextStyle(color: Colors.white)
            : textStyle.copyWith(color: Colors.white),
      ),
    );
  }
}
