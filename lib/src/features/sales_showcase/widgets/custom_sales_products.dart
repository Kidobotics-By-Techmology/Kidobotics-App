import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:kidobotics_app/src/constants/colors.dart';
import 'package:kidobotics_app/src/models/product_model.dart';

class CustomSalesProducts extends StatelessWidget {
  const CustomSalesProducts({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: const BoxDecoration(
        color: AppColors.kGreenColor,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: product.images.length,
        itemBuilder: (context, index) {
          final singleProduct = product.images[index];

          return Padding(
            padding: const EdgeInsets.only(
              top: 60,
              left: 20,
              right: 0,
              bottom: 0,
            ),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      color: AppColors.kWhiteTextColor,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          singleProduct,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                // Dot Indicator
                DotsIndicator(
                  dotsCount: product.images.length,
                  position: index.toDouble(),
                  decorator: DotsDecorator(
                    color: AppColors.kSmallTextColor,
                    activeColor: AppColors.kWhiteTextColor,
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
