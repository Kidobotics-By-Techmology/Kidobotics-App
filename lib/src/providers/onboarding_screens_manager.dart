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

  nextPage(BuildContext context) {
    if (_currentPage < onboardingPages.length - 1) {
      _currentPage++;
      notifyListeners();
    }
  }

  skip() {
    _currentPage = onboardingPages.length - 1;
    notifyListeners();
  }

  bool get isLastPage => _currentPage == onboardingPages.length - 1;

  void getStarted(BuildContext context) {
    Navigator.pushNamed(
      context,
      DashboardCheck.routeName,
    );
  }
}
