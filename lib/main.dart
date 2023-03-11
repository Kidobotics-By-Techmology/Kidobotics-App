import 'package:flutter/material.dart';
import 'package:kidobotics_app/src/features/authentication/screens/login/login_screen1.dart';
import 'package:kidobotics_app/src/features/authentication/screens/login/login_screen2.dart';
import 'package:kidobotics_app/src/features/authentication/screens/register/full_name_screen.dart';
import 'package:kidobotics_app/src/features/authentication/screens/register/age_screen.dart';
import 'package:kidobotics_app/src/features/authentication/screens/register/email_confirmation.dart';
import 'package:kidobotics_app/src/features/authentication/screens/register/email_screen.dart';
import 'package:kidobotics_app/src/features/authentication/screens/register/success_message.dart';
import 'package:kidobotics_app/src/features/dashboards/dashboard_check.dart';
import 'package:kidobotics_app/src/features/dashboards/student_checker.dart';
import 'package:kidobotics_app/src/features/onboarding/screens/onboarding_screen.dart';
import 'package:kidobotics_app/src/providers/onboarding_screens_manager.dart';
import 'package:provider/provider.dart';

import 'src/features/onboarding/screens/splash_screen.dart';

void main() {
  runApp(const KidoboticsApp());
}

class KidoboticsApp extends StatelessWidget {
  const KidoboticsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<OnboardingScreensManager>(
          create: (context) => OnboardingScreensManager(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Kidobotics",

        // The initial route is the first route that is loaded when the app is
        // started. In this case, the initial route is the splash screen.
        initialRoute: FullNameScreen.routeName,

        // The routes are the different screens that the app can navigate to.
        routes: {
          SplashScreen.routeName: (context) => const SplashScreen(),
          OnboardingScreen.routeName: (context) => const OnboardingScreen(),
          DashboardCheck.routeName: (context) => const DashboardCheck(),
          StudentChecker.routeName: (context) => const StudentChecker(),
          FullNameScreen.routeName: (context) => const FullNameScreen(),
          AgeScreen.routeName: (context) => const AgeScreen(),
          EmailScreen.routeName: (context) => const EmailScreen(),
          EmailConfirmationScreen.routeName: (context) =>
              const EmailConfirmationScreen(),
          SuccessMessage.routeName: (context) => const SuccessMessage(),
          LoginScreen1.routeName: (context) => const LoginScreen1(),
          LoginScreen2.routeName: (context) => const LoginScreen2(),
        },
      ),
    );
  }
}
