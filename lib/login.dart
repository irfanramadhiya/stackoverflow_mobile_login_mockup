import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom_login_widget.dart';
import 'package:flutter_application_1/button_widget.dart';
import 'package:flutter_application_1/input_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 100,
                    height: 110,
                    child: Image.asset("assets/images/stack_overflow.png")),
                buttonWidget(
                    color: Colors.white,
                    logoPath: "assets/images/google.png",
                    buttonText: "Login with google",
                    buttonTextColor: Colors.black),
                buttonWidget(
                    color: Colors.black,
                    logoPath: "assets/images/github.png",
                    buttonText: "Login with github",
                    buttonTextColor: Colors.white),
                buttonWidget(
                    color: Colors.blueAccent,
                    logoPath: "assets/images/facebook.png",
                    buttonText: "Login with facebook",
                    buttonTextColor: Colors.white),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                  child: Form(
                      child: Column(
                    children: [
                      inputWidget(inputTitle: "Email"),
                      inputWidget(
                          inputTitle: "Password",
                          suffixIcon: Icons.visibility_off),
                      buttonWidget(
                          color: Colors.blueAccent,
                          buttonText: "Log in",
                          buttonTextColor: Colors.white)
                    ],
                  )),
                ),
                SizedBox(
                  height: 16,
                ),
                bottomLogin(
                    firstText: "Don't have an account?",
                    linkText: "Sign up",
                    onLinkTap: () => print("Sign up")),
                bottomLogin(
                    firstText: "Are you an employer?",
                    linkText: "Sign up on talent",
                    onLinkTap: () => print("Sign up on talent"),
                    iconLink: Icons.next_plan_outlined)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
