import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidobotics_app/src/constants/colors.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_button.dart';
import 'package:kidobotics_app/src/features/sales_showcase/screens/select_mobot.dart';
import 'package:kidobotics_app/src/features/sales_showcase/widgets/custom_sales_products.dart';
import 'package:kidobotics_app/src/services/local_services.dart';
import 'package:kidobotics_app/src/utilities/app_large_text.dart';
import 'package:kidobotics_app/src/utilities/app_text.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SalesShowcase extends StatefulWidget {
  const SalesShowcase({
    Key? key,
  }) : super(key: key);

  static const routeName = 'sales-showcase';

  @override
  State<SalesShowcase> createState() => _SalesShowcaseState();
}

class _SalesShowcaseState extends State<SalesShowcase> {
  LocalServices localServices = LocalServices();

  final videoUrl = "https://youtu.be/Od-GMCQgY58";

  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoUrl);

    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final product = LocalServices.products[0];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Container with collection of images
            CustomSalesProducts(product: product),

            SizedBox(
              height: Get.height * 0.05,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title text
                  AppLargeText(
                    text: product.title,
                    fontSize: 23.4,
                    textAlign: TextAlign.start,
                    color: AppColors.kBlueColor,
                  ),

                  SizedBox(
                    height: Get.height * 0.02,
                  ),

                  // Description text
                  AppText(
                    text: product.description,
                    textAlign: TextAlign.start,
                    color: AppColors.kSmallTextColor,
                  ),

                  SizedBox(
                    height: Get.height * 0.03,
                  ),

                  // Another Title
                  AppLargeText(
                    text: product.title2,
                    fontSize: 23.4,
                    textAlign: TextAlign.start,
                    color: AppColors.kBlueColor,
                  ),

                  SizedBox(
                    height: Get.height * 0.02,
                  ),

                  // Video player
                  Center(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,
                        onReady: () => debugPrint('Ready'),
                        bottomActions: [
                          CurrentPosition(),
                          ProgressBar(
                            colors: const ProgressBarColors(
                              playedColor: AppColors.kPurpleColor,
                              handleColor: AppColors.kPurpleColor,
                            ),
                          ),
                          const PlaybackSpeedButton(),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: Get.height * 0.02,
                  ),

                  // Video description
                  AppText(
                    text: product.shortDescription1,
                    textAlign: TextAlign.start,
                    color: AppColors.kSmallTextColor,
                  ),

                  SizedBox(
                    height: Get.height * 0.03,
                  ),

                  // An Image
                  Center(
                    child: Container(
                      height: Get.height * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(
                            product.images[2],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: Get.height * 0.02,
                  ),

                  // short description
                  AppText(
                    text: product.shortDescription2,
                    textAlign: TextAlign.start,
                    color: AppColors.kSmallTextColor,
                  ),

                  SizedBox(
                    height: Get.height * 0.03,
                  ),

                  // Subtitle
                  AppLargeText(
                    text: product.title3,
                    fontSize: 23.4,
                    textAlign: TextAlign.start,
                    color: AppColors.kBlueColor,
                  ),

                  SizedBox(
                    height: Get.height * 0.02,
                  ),

                  // Next Button
                  CustomButton(
                    buttonText: 'Next',
                    color: AppColors.kPurpleColor,
                    onTap: () {
                      Navigator.pushNamed(context, SelectMobot.routeName);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
