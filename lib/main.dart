import 'package:flutter/material.dart';
import 'package:toast/login.dart';
import 'package:toast/tost.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
