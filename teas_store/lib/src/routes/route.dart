import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teas_store/src/routes/route_path.dart';
import 'package:teas_store/src/views/screens/login/login.screen.dart';
import 'package:teas_store/src/views/screens/sign_up/sign_up.screen.dart';
import 'package:teas_store/src/views/screens/splash/splash.screen.dart';
import 'package:teas_store/src/views/screens/start/start.screen.dart';

class AppRoute {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePath.homeRoute:
        return _goTo(StartScreen());
      case RoutePath.splashRoute:
        return _goTo(SplashScreen());
      case RoutePath.loginRoute:
        return _goTo(LoginScreen());
      case RoutePath.signUpRoute:
        return _goTo(SignUpScreen());
      default:
        return _goTo(undefinedView(settings.name));
    }
  }

  MaterialPageRoute _goTo(Widget widget) {
    return MaterialPageRoute(builder: (_) => widget);
  }

  Widget undefinedView(String routeName) {
    return Scaffold(
      body: Center(
        child: Text('Route for $routeName is not defined'),
      ),
    );
  }
}
