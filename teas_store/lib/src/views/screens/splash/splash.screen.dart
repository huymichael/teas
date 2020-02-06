import 'package:flutter/material.dart';
import 'package:teas_store/src/routes/route_path.dart';

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
              Text(
                'Michael Teas',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void openStartScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, RoutePath.homeRoute);
    });
  }
}
