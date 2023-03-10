import 'package:flutter/material.dart';
import 'package:kidobotics_app/src/features/dashboards/dashboard_check.dart';
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
        initialRoute: SplashScreen.routeName,

        // The routes are the different screens that the app can navigate to.
        routes: {
          SplashScreen.routeName: (context) => const SplashScreen(),
          OnboardingScreen.routeName: (context) => const OnboardingScreen(),
          DashboardCheck.routeName:(context) => const DashboardCheck(),
        },
      ),
    );
  }
}
