import 'package:flutter/material.dart';
import 'package:flutter_application_lemotcell/screens/Dashboard.dart';
import 'package:flutter_application_lemotcell/screens/Login.dart';
import 'package:flutter_application_lemotcell/screens/Otp.dart';
import 'package:flutter_application_lemotcell/screens/Shop.dart';
import 'package:flutter_application_lemotcell/screens/Splash.dart';
import 'package:flutter_application_lemotcell/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: SplashScreens(),
    );
  }
}
