import 'package:flutter/material.dart';
import 'package:teas_store/src/routes/route.dart';
import 'package:teas_store/src/views/screens/login/login.screen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Screen'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            navigateTo(context, LoginScreen());
          },
          child: Container(
            child: Text('go to sign in'),
          ),
        ),
      ),
    );
  }
}
