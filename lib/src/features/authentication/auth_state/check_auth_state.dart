import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kidobotics_app/src/features/authentication/auth_state/auth.dart';
import 'package:kidobotics_app/src/features/dashboards/dashboard_check.dart';

class CheckAuthState extends StatefulWidget {
  const CheckAuthState({super.key});

  @override
  State<CheckAuthState> createState() => _CheckAuthStateState();
}

class _CheckAuthStateState extends State<CheckAuthState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const DashboardCheck();
          } else {
            return const Authenticaion();
          }
        },
      ),
    );
  }
}
