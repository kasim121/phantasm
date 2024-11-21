import 'package:flutter/material.dart';

import '../../../../confi/themes/app_colors.dart';
import '../../../../confi/themes/app_text_style.dart';

class PopularShoeCardList extends StatelessWidget {
  const PopularShoeCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        itemCount: 10,
        itemBuilder: (context, index) {
          String shoeName = 'Sample Shoe $index';
          double shoePrice = 493.00;
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SizedBox(
              height: 185,
              width: 157,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/sampleshoe',
                    arguments: {
                      'shoeIndex': index,
                      'shoeName': shoeName,
                      'shoePrice': shoePrice,
                    },
                  );
                },
                child: Card(
                  color: AppColors.darkBackground,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 4,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                'assets/images/shoe.png',
                                width: 96,
                                height: 54,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Best Seller'.toUpperCase(),
                              style: AppTextStyles.airbnbCerealText(
                                color: AppColors.customblue,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Sample ${index + 1}',
                              style: AppTextStyles.airbnbCerealText(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '\$493.00',
                              style: AppTextStyles.airbnbCerealText(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: -0.5,
                        right: 1,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                            color: Color.fromRGBO(91, 158, 225, 1),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/icons/plus.png',
                              width: 15,
                              height: 15,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
