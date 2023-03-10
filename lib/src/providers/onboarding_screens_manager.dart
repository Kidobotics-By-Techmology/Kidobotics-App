import 'package:flutter/material.dart';
import 'package:kidobotics_app/src/features/dashboards/dashboard_check.dart';
import 'package:kidobotics_app/src/models/onboarding_model.dart';

class OnboardingScreensManager extends ChangeNotifier {
  List<OnboardingModel> onboardingPages = [
    OnboardingModel(
      title: "Education is the best learn ever",
      description:
          "Kidobotics is your gateway to the exciting world of robotcs",
      imageUrl: "assets/images/onboarding1.png",
    ),
    OnboardingModel(
      title: "Easy and Exciting Learning",
      description:
          "We make learning about robots fun and accessible for kids of all ages",
      imageUrl: "assets/images/onboarding2.png",
    ),
    OnboardingModel(
      title: "Explore the possibilities",
      description: "Join us and see where your imagination can take you",
      imageUrl: "assets/images/onboarding3.png",
    ),
  ];

  int _currentPage = 0;

  int get currentPage => _currentPage;

  set currentPage(int value) {
    _currentPage = value;
    notifyListeners();
  }

  void nextPage(BuildContext context) {
    if (_currentPage < onboardingPages.length - 1) {
      _currentPage++;
      notifyListeners();
    }
  }

  void skip() {
    _currentPage = onboardingPages.length - 1;
    notifyListeners();
  }

  bool get isLastPage => _currentPage == onboardingPages.length - 1;

  void nextOnPressed(BuildContext context) {
    if (isLastPage) {
      // Navigate to the next screen
      Navigator.pushReplacementNamed(context, DashboardCheck.routeName);
    } else {
      // Navigate to the next page
      nextPage(context);
    }
  }

  // navigate to the next page or dashboard_check if isLastPage if not then use pageController to go to next onboarding screen
  // void nextOnPressed(BuildContext context, PageController pageController) {
  //   if (isLastPage == true) {
  //     // Navigate to the next screen
  //     Navigator.pushReplacementNamed(context, DashboardCheck.routeName);
  //   } else {
  //     // Navigate to the next page
  //     pageController.nextPage(
  //       duration: const Duration(milliseconds: 300),
  //       curve: Curves.ease,
  //     );
  //   }
  // }
}
