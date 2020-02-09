import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teas_store/src/shared/widgets/gradient_text.widget.dart';
import 'package:teas_store/src/shared/widgets/rounded_button.widget.dart';
import 'package:teas_store/src/shared/widgets/spacer.widget.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';
import 'package:teas_store/src/utils/constants/text_style.constant.dart';
import 'package:teas_store/src/utils/constants/widget_decoration.widget.dart';

class ForgotPasswordSection extends StatefulWidget {
  @override
  _ForgotPasswordSectionState createState() => _ForgotPasswordSectionState();
}

class _ForgotPasswordSectionState extends State<ForgotPasswordSection> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _heading(),
            WidgetSpacer(
              height: 20.0,
            ),
            _forgotPassForm(),
          ],
        ),
      ),
    );
  }

  Widget _heading() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          GradientText(
            text: 'Can\'t log in?',
            gradient: LinearGradient(colors: ColorConstant.MOUNTAIN_ROCK_COLOR),
            textStyle: TextStyleConstant.EATER_TITLE_25,
          ),
          GradientText(
            text: 'We\'ll send a recovery link to',
            gradient: LinearGradient(colors: ColorConstant.MOUNTAIN_ROCK_COLOR),
          ),
        ],
      ),
    );
  }

  Widget _forgotPassForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: WidgetDecoration.ROUNDED_TEXT_FORM_FIELD.copyWith(
            hintText: 'Enter email',
            prefixIcon: Icon(Icons.mail),
            contentPadding: EdgeInsets.all(18.0),
          ),
        ),
        WidgetSpacer(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80.0),
          child: RoundedButton(
            onPress: () {
              //TODO send reset pass via email
              print('Trigger send reset pass');
            },
            buttonLabel: 'Send',
            buttonColor: ColorConstant.DEFAULT,
            buttonLabelStyle: TextStyle(color: Colors.white),
          ),
        ),
        WidgetSpacer(
          height: 15.0,
        ),
        Divider(),
        InkWell(
          onTap: (){
             Navigator.pop(context);
          },
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'Return to log in',
              style: TextStyleConstant.ANCHOR_TEXT,
            ),
          ),
        ),
      ],
    );
  }
}
