import 'package:flutter/material.dart';
import 'package:teas_store/src/views/screens/splash/splash.screen.dart';
import 'package:teas_store/src/bases/themes/app.theme.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.customTheme,
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
