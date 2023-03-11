import 'package:flutter/material.dart';
import 'package:kidobotics_app/src/features/onboarding/widget/custom_pageviews.dart';
import 'package:kidobotics_app/src/providers/onboarding_screens_manager.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  static const routeName = "onboarding_screen";

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    return Scaffold(
      body: Consumer<OnboardingScreensManager>(
        builder: (context, onboardingScreensManager, child) {
          return PageView.builder(
            controller: pageController,
            itemCount: onboardingScreensManager.onboardingPages.length,
            itemBuilder: (context, index) {
              final currentPage =
                  onboardingScreensManager.onboardingPages[index];
              return CustomPageViews(
                pageController: pageController,
                onboardingPages: onboardingScreensManager.onboardingPages,
                imageUrl: currentPage.imageUrl,
                title: currentPage.title,
                description: currentPage.description,
                isLastPage: index ==
                    onboardingScreensManager.onboardingPages.length - 1,
                skipOnPressed: () {
                  pageController.animateToPage(
                    onboardingScreensManager.onboardingPages.length - 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                nextOnPressed: () {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                getStartedOnPressed: () {
                  onboardingScreensManager.getStarted(context);
                },
              );
            },
          );
        },
      ),
    );
  }
}
