import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future navigateTo(BuildContext context, Widget page) {
  if (page == null) {
    return Future(null);
  }
  var route = MaterialPageRoute(builder: (builder) => page);
  return Navigator.push(context, route);
}
