import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:teas_store/src/shared/widgets/gradient_text.widget.dart';
import 'package:teas_store/src/shared/widgets/rounded_button.widget.dart';
import 'package:teas_store/src/shared/widgets/spacer.widget.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';
import 'package:teas_store/src/utils/constants/text_style.constant.dart';

class LoginSection extends StatefulWidget {
  @override
  _LoginSectionState createState() => _LoginSectionState();
}

class _LoginSectionState extends State<LoginSection> {
  final GlobalKey<FormBuilderState> _formState = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildHeading(),
              WidgetSpacer(
                height: 20.0,
              ),
              _buildLoginForm(),
              _buildLoginButton(),
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
            text: 'Login',
            gradient: LinearGradient(colors: ColorConstant.MOUNTAIN_ROCK_COLOR),
            textStyle: TextStyle(
              fontFamily: 'Eater',
              fontSize: 30.0,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Flexible(
                child: Text('Don\'t have an account ?'),
                flex: 2,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: InkWell(
                    onTap: () {
                      //Todo move to sign up page
                      print('Navitage to sign up page');
                    },
                    child: Container(
                      child: Text(
                        'Sign up here.',
                        style: TextStyleConstant.ANCHOR_TEXT,
                      ),
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

  Widget _buildLoginForm() {
    return FormBuilder(
      key: _formState,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          FormBuilderTextField(
            attribute: 'username',
            maxLines: 1,
            keyboardType: TextInputType.emailAddress,
          ),
          WidgetSpacer(
            height: 10.0,
          ),
          FormBuilderTextField(
            maxLines: 1,
            attribute: 'password',
            obscureText: true,
          ),
          WidgetSpacer(
            height: 20.0,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
      child: RoundedButton(
        buttonLabel: 'Login',
        onPress: () {
          //TODO implement authenticate here
          //TOTO implement navigation
          print('Navigate to Home screen');
          if (_formState.currentState.saveAndValidate()) {
            print(_formState.currentState.value);
          }
        },
        buttonColor: ColorConstant.DEFAULT_LIGHT,
        buttonLabelStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}