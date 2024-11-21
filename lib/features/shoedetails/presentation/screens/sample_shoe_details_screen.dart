import 'package:flutter/material.dart';
import 'package:phantasm/confi/themes/app_text_style.dart';
import 'package:phantasm/features/mycart/presentation/widgets/mycart_custom_button.dart';
import '../../../../confi/themes/app_colors.dart';
import '../widgets/shoe_gallary_listview.dart';
import '../widgets/shoe_size_listview.dart';

class SampleShoeScreen extends StatelessWidget {
  const SampleShoeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    final String shoeName = arguments['shoeName'];
    final double shoePrice = arguments['shoePrice'];

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 44.0,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: AppColors.darkBackground,
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/arrow.png',
                            width: 22.0,
                            height: 22.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Men’s Shoes",
                      style: AppTextStyles.airbnbCerealText(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      width: 44.0,
                      height: 44.0,
                      decoration: BoxDecoration(
                        color: AppColors.darkBackground,
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/bag.png',
                          width: 14.0,
                          height: 16.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Center(
                child: Transform.rotate(
                  angle: -0.5,
                  child: Image.asset(
                    'assets/images/shoe.png',
                    width: 243,
                    height: 135,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/icons/oval.png',
                  width: 311,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: screenHeight / 1.6,
                decoration: const BoxDecoration(
                  color: AppColors.darkBackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 16),
                          child: Text(
                            "BEST SELLER",
                            style: AppTextStyles.airbnbCerealText(
                              color: AppColors.customBlue,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                          ),
                          child: Text(
                            shoeName,
                            style: AppTextStyles.airbnbCerealText(
                              color: AppColors.textPrimary,
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                          ),
                          child: Text(
                            '\$$shoePrice',
                            style: AppTextStyles.airbnbCerealText(
                              color: AppColors.textPrimary,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                          ),
                          child: Text(
                            'Lorem ipsum dolor sit amet consectetur. Diam et augue est enim posuere fames. Placerat netus est at eget vivamus auctor id sit. Sodales aliquam malesuada sed pellentesque. Tortor eleifend faucibus lacus in lorem ipsum curabitur.',
                            style: AppTextStyles.airbnbCerealText(
                              color: AppColors.grayShade,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                          ),
                          child: Text(
                            "Gallery",
                            style: AppTextStyles.airbnbCerealText(
                              color: AppColors.textPrimary,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 16.0,
                          ),
                          child: GalleryScreen(),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Size",
                                style: AppTextStyles.airbnbCerealText(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "EU",
                                    style: AppTextStyles.airbnbCerealText(
                                      color: AppColors.textPrimary,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    "US",
                                    style: AppTextStyles.airbnbCerealText(
                                      color: AppColors.customBlue,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    "UK",
                                    style: AppTextStyles.airbnbCerealText(
                                      color: AppColors.customBlue,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 13.0),
                          child: ShoeSizeListView(),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          width: double.infinity,
                          height: 94,
                          decoration: const BoxDecoration(
                            color: AppColors.background,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            ),
                            border: Border(
                              top: BorderSide(
                                color: AppColors.grayShade,
                                width: 0.1,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 5),
                                    Text(
                                      'Price',
                                      style: AppTextStyles.airbnbCerealText(
                                        color: AppColors.grayShade,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      '\$493.00',
                                      style: AppTextStyles.airbnbCerealText(
                                        color: AppColors.textPrimary,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 24,
                                      ),
                                    ),
                                  ],
                                ),
                                CustomAddToCartElevatedButton(
                                    height: 54,
                                    text: 'Add To Cart',
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/myCart');
                                    }),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
