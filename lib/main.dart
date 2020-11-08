import 'package:flutter/material.dart';
import 'package:toast/Login/login2.dart';
import 'package:toast/Login/signuppage.dart';
import 'package:toast/login.dart';
import 'package:toast/tost.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,

      home: Login2(),
    );
  }
}
