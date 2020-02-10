import 'package:flutter/material.dart';
import 'package:teas_store/src/routes/route_path.dart';
import 'package:teas_store/src/utils/constants/text_style.constant.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openStartScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.teal,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                radius: 150,
                backgroundColor: Colors.transparent,
                child: Image.asset('assets/icons/koi_icon.png'),
              ),
              Text('michael teas'.toUpperCase(),
                  style: TextStyleConstant.SPLASH_TITLE),
            ],
          ),
        ],
      ),
    );
  }

  void openStartScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, RoutePath.rootRoute, (_) => false);
    });
  }
}
