import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teas_store/src/routes/route_path.dart';
import 'package:teas_store/src/views/screens/home/category/featured_category.screen.dart';
import 'package:teas_store/src/views/screens/home/home.screen.dart';
import 'package:teas_store/src/views/screens/home/product/product_item.screen.dart';
import 'package:teas_store/src/views/screens/login/login.screen.dart';
import 'package:teas_store/src/views/screens/reset_passwrod.screen/forgot_password.screen.dart';
import 'package:teas_store/src/views/screens/sign_up/sign_up.screen.dart';
import 'package:teas_store/src/views/screens/splash/splash.screen.dart';
import 'package:teas_store/src/views/screens/start/start.screen.dart';

class AppRoute {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePath.rootRoute:
        return _goTo(StartScreen());
      case RoutePath.splashRoute:
        return _goTo(SplashScreen());
      case RoutePath.loginRoute:
        return _goTo(LoginScreen());
      case RoutePath.signUpRoute:
        return _goTo(SignUpScreen());
      case RoutePath.forgotPasswordRoute:
        return _goTo(ForgotPasswordScreen());
      case RoutePath.homeRoute:
        return _goTo(HomeScreen());
      case RoutePath.featuredCategoryRoute:
        var argument = settings.arguments as Map<String, String>;
        return _goTo(
          FeaturedCategoryScreen(
            categoryId: argument['id'],
            categoryName: argument['categoryname'],
          ),
        );
      case RoutePath.productRoute:
        var argument = settings.arguments as Map<String, String>;
        return _goTo(ProductScreen(
          categoryId: argument['id'],
          categoryName: argument['categoryname'],
        ));
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
