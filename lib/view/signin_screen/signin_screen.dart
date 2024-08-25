import 'package:flutter/material.dart';
import 'package:signin_singnup/main.dart';
import 'package:signin_singnup/view/logout_screen/logout_screen.dart';
import 'package:signin_singnup/view/signup_screen/signup_screen.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController password2controller = TextEditingController();
  TextEditingController email2controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Sign in to Your Account",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: email2controller,
                  validator: (value) {
                    if (value != emailcheck) {
                      return "Wrong email address";
                    } else if (value!.isEmpty) {
                      return "enter email address";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Your Email Address",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(78, 158, 158, 158))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(86, 158, 158, 158))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: password2controller,
                  validator: (value) {
                    if (value != passcheck) {
                      return "Wrong password";
                    } else if (value!.isEmpty) {
                      return "enter password";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      hintText: "Your Password",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(78, 158, 158, 158))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(86, 158, 158, 158))),
                      suffixIcon: Icon(Icons.visibility_off)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 500,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LogoutScreen(),
                              ));
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(246, 5, 95, 230)),
                        foregroundColor: WidgetStatePropertyAll(Colors.white),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        elevation: WidgetStatePropertyAll(10),
                      ),
                      child: Text("Sign In")),
                ),
                Spacer(),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    child: Row(
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupScreen(),
                                  ));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.blue[700]),
                            ))
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
