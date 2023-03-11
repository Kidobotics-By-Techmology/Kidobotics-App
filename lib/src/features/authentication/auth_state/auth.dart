import 'package:flutter/material.dart';
import 'package:kidobotics_app/src/features/authentication/screens/login/login_screen1.dart';
import 'package:kidobotics_app/src/features/authentication/screens/register/full_name_screen.dart';

class Authenticaion extends StatefulWidget {
  const Authenticaion({super.key});

  @override
  State<Authenticaion> createState() => _AuthenticaionState();
}

class _AuthenticaionState extends State<Authenticaion> {
  // Initially show Login Page
  bool showLogin = true;

  // Toggle between Login and Sign Up
  void toggleScreens() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin) {
      return const LoginScreen1(
          // showSignUp: toggleScreens,
          );
    } else {
      return const FullNameScreen(
          // showLogin: toggleScreens,
          );
    }
  }
}
