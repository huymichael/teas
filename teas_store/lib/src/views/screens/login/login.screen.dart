import 'package:flutter/material.dart';
import 'package:teas_store/src/routes/route.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            navigateTo(context, LoginScreen());
          },
          child: Container(
            child: Text('go to sign up'),
          ),
        ),
      ),
    );
  }
}
