import 'package:flutter/material.dart';
import 'package:mayfai_app/Screens/Landing%20Screen/landing_screen.dart';
import 'package:mayfai_app/Screens/Login%20Screen/login_screen.dart';
import 'package:mayfai_app/Screens/Register%20Screen/register_screen.dart';
import 'package:mayfai_app/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}
