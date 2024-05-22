import 'package:flutter/material.dart';
import 'package:login_ui/widgets/gradient_button.dart';
import 'package:login_ui/widgets/login_field.dart';
import 'package:login_ui/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/signin_balls.png"),
              const Text(
                "Sign in",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50),
              SocialButton(
                iconPath: "assets/svgs/g_logo.svg",
                buttonTitle: "Continue with Google",
                onPressed: () {
                  print("Google Login");
                },
              ),
              const SizedBox(height: 30),
              SocialButton(
                iconPath: "assets/svgs/f_logo.svg",
                buttonTitle: "Continue with Facebook",
                hPadding: 90,
                onPressed: () {
                  print("Facebook Action");
                },
              ),
              const SizedBox(height: 20),
              const Text(
                "or",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 20),
              const LoginField(
                hintText: 'Email',
              ),
              const SizedBox(height: 20),
              const LoginField(
                hintText: 'Password',
              ),
              const SizedBox(height: 20),
              GradientButton(onClick: () {
                print("Sign in Action");
              })
            ],
          ),
        ),
      ),
    );
  }
}
