import 'package:flutter/material.dart';
import 'package:kidobotics_app/src/constants/colors.dart';
import 'package:kidobotics_app/src/models/onboarding_model.dart';
import 'package:kidobotics_app/src/utilities/app_large_text.dart';
import 'package:kidobotics_app/src/utilities/app_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageViews extends StatelessWidget {
  const CustomPageViews({
    Key? key,
    required this.pageController,
    required this.onboardingPages,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.skipOnPressed,
    required this.nextOnPressed,
    required this.getStartedOnPressed,
    required this.isLastPage,
  }) : super(key: key);

  final PageController pageController;
  final List<OnboardingModel> onboardingPages;
  final String imageUrl;
  final String title;
  final String description;
  final Function() skipOnPressed;
  final Function() nextOnPressed;
  final Function() getStartedOnPressed;
  final bool isLastPage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColors.kBlackColor,
        ),

        Positioned(
          top: 40,
          left: 0,
          right: 0,
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
        ),

        // Positioned with a child container that contains the Title text in Big fonts, description and row with skip snd next button
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 350,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      AppLargeText(
                        text: title,
                        color: AppColors.kBlackTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: description,
                        color: AppColors.kSmallTextColor,
                      ),
                    ],
                  ),

                  // Smooth Page Indicator
                  SmoothPageIndicator(
                    controller: pageController,
                    count: onboardingPages.length,
                    effect: const ExpandingDotsEffect(
                      dotColor: AppColors.kSmallTextColor,
                      activeDotColor: AppColors.kLightGreenColor,
                      dotHeight: 10,
                      dotWidth: 10,
                      expansionFactor: 4,
                      spacing: 5,
                    ),
                  ),

                  isLastPage
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: isLastPage
                                  ? getStartedOnPressed
                                  : nextOnPressed,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.kLightGreenColor,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 15,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: AppText(
                                text: isLastPage ? "Get Started" : "Next",
                                color: AppColors.kWhiteTextColor,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: skipOnPressed,
                              child: const AppText(
                                text: 'Skip',
                                fontSize: 14,
                                color: AppColors.kSmallTextColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: isLastPage
                                  ? getStartedOnPressed
                                  : nextOnPressed,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.kLightGreenColor,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 15,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: AppText(
                                text: isLastPage ? "Get Started" : "Next",
                                color: AppColors.kWhiteTextColor,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
