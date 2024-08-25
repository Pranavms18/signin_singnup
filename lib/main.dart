import 'package:flutter/material.dart';
import 'package:signin_singnup/view/signin_screen/signin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SigninScreen(),
    );
  }
}

String emailcheck = "";
String passcheck = "";
