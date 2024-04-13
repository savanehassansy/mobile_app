import 'package:flutter/material.dart';

push(BuildContext context, Widget page, {bool replace = false}) async {
  NavigatorState navigator = Navigator.of(context);
  MaterialPageRoute route = MaterialPageRoute(builder: (_) => page);

  return replace ? navigator.pushReplacement(route) : navigator.push(route);
}