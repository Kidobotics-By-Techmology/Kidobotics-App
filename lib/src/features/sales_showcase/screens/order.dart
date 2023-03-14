import 'package:flutter/material.dart';
import 'package:kidobotics_app/src/constants/colors.dart';
import 'package:kidobotics_app/src/features/sales_showcase/widgets/rounded_icon_button.dart';
import 'package:kidobotics_app/src/utilities/app_large_text.dart';

class OrderMobot extends StatefulWidget {
  const OrderMobot({super.key});

  static const routeName = 'order_mobot';

  @override
  State<OrderMobot> createState() => _OrderMobotState();
}

class _OrderMobotState extends State<OrderMobot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image centered in a container
            Container(
              height: 291,
              decoration: BoxDecoration(
                color: AppColors.kYellowColor.withOpacity(0.6),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: AppColors.kWhiteTextColor,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/mobot-pink.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // Two Images in a Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: AppColors.kYellowColor.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/mobot-pink.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: AppColors.kYellowColor.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/mobot-pink.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            const AppLargeText(
              text: 'Number',
              color: AppColors.kBlueColor,
              fontSize: 23.5,
            ),

            const SizedBox(
              height: 20,
            ),

            // Select Number of Mobots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedIconButton(
                  icon: Icons.add,
                  onPressed: () {
                    // setState(() {
                    //   age--;
                    // });
                  },
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.0,
                  ),
                  child: Text(
                    "1",
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                RoundedIconButton(
                  icon: Icons.add,
                  onPressed: () {
                    // setState(() {
                    //   age++;
                    // });
                  },
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            // Total
            const AppLargeText(
              text: 'Total',
              color: AppColors.kBlueColor,
              fontSize: 23.5,
            ),

            const SizedBox(
              height: 20,
            ),

            // Total Price
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                AppLargeText(
                  text: '1000',
                  color: AppColors.kBlueColor,
                ),
                SizedBox(
                  width: 10,
                ),
                AppLargeText(
                  text: 'DA',
                  color: AppColors.kBlueColor,
                  fontSize: 30.0,
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            // Order Button
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.kBlueColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Center(
                child: AppLargeText(
                  text: 'Order it Now',
                  color: AppColors.kWhiteTextColor,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
