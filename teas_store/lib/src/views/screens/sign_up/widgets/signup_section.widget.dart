import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:teas_store/src/routes/route_path.dart';
import 'package:teas_store/src/shared/widgets/gradient_text.widget.dart';
import 'package:teas_store/src/shared/widgets/rounded_button.widget.dart';
import 'package:teas_store/src/shared/widgets/spacer.widget.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';
import 'package:teas_store/src/utils/constants/text_style.constant.dart';
import 'package:teas_store/src/utils/constants/widget_decoration.widget.dart';

class SignUpSection extends StatefulWidget {
  @override
  _SignUpSectionState createState() => _SignUpSectionState();
}

class _SignUpSectionState extends State<SignUpSection> {
  final GlobalKey<FormBuilderState> _formState = GlobalKey<FormBuilderState>();
  bool _isHidePassword = true;
  bool _isHideConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              _buildHeading(),
              WidgetSpacer(
                height: 20.0,
              ),
              _buildSignUpForm(),
              _buildSignUpButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeading() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          GradientText(
            text: 'create account!'.toUpperCase(),
            gradient: LinearGradient(colors: ColorConstant.MOUNTAIN_ROCK_COLOR),
            textStyle: TextStyleConstant.EATER_TITLE_30,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: Text('Already have an account?'),
              ),
              WidgetSpacer(
                width: 5.0,
              ),
              Flexible(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, RoutePath.loginRoute);
                  },
                  child: Container(
                    child: Text(
                      'Sign in',
                      style: TextStyleConstant.ANCHOR_TEXT,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpForm() {
    return FormBuilder(
      key: _formState,
      child: Column(
        children: <Widget>[
          FormBuilderTextField(
            attribute: 'email',
            maxLines: 1,
            decoration: WidgetDecoration.ROUNDED_TEXT_FORM_FIELD.copyWith(
              prefixIcon: Icon(Icons.mail),
              hintText: 'Your email',
              contentPadding: EdgeInsets.all(20.0),
            ),
          ),
          WidgetSpacer(
            height: 10.0,
          ),
          FormBuilderTextField(
            attribute: 'password',
            maxLines: 1,
            obscureText: _isHidePassword,
            decoration: WidgetDecoration.ROUNDED_TEXT_FORM_FIELD.copyWith(
              hintText: 'Password',
              contentPadding: EdgeInsets.all(20.0),
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isHidePassword = !_isHidePassword;
                  });
                },
                icon: _isHidePassword
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              ),
            ),
          ),
          WidgetSpacer(
            height: 10.0,
          ),
          FormBuilderTextField(
            attribute: 'confirmPassword',
            maxLines: 1,
            obscureText: _isHideConfirmPassword,
            decoration: WidgetDecoration.ROUNDED_TEXT_FORM_FIELD.copyWith(
              prefixIcon: Icon(Icons.lock),
              hintText: 'Confirm Password',
              contentPadding: EdgeInsets.all(20.0),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isHideConfirmPassword = !_isHideConfirmPassword;
                  });
                },
                icon: _isHideConfirmPassword
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: RoundedButton(
        onPress: () {},
        buttonLabel: 'Create',
        buttonColor: ColorConstant.DEFAULT_LIGHT,
        buttonLabelStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}
