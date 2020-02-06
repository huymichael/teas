import 'package:flutter/material.dart';
import 'package:teas_store/src/bases/themes/app.theme.dart';
import 'package:teas_store/src/routes/route.dart';
import 'package:teas_store/src/routes/route_path.dart';
import 'package:teas_store/src/views/screens/splash/splash.screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.customTheme,
      onGenerateRoute: AppRoute().generateRoute,
      initialRoute: RoutePath.homeRoute,
    );
  }
}
