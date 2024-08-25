import 'package:flutter/material.dart';
import 'package:signin_singnup/view/signin_screen/signin_screen.dart';

class LogoutScreen extends StatefulWidget {
  const LogoutScreen({super.key});

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => SigninScreen(),
                ),
                (route) => true,
              );
            },
            child: Text("Log out")),
      ),
    );
  }
}
