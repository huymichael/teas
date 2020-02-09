import 'package:flutter/material.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: Container(
          color: ColorConstant.SMOKE,
          child: Column(
            children: <Widget>[
              Container(height: 300,color: Colors.teal,)
            ],
          ),
        ),
      ),
    );
  }
}
