import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:phantasm/confi/themes/app_colors.dart';
import 'package:phantasm/features/home/presentation/widgets/custom_search_textfield.dart';
import '../../../../confi/themes/app_text_style.dart';
import '../widgets/arrival_cardshoes_list.dart';
import '../widgets/sample_shoelist.dart';
import '../widgets/popular_cardshoe_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        ZoomDrawer.of(context)!.toggle();
                      },
                      child: Container(
                        width: screenWidth * 0.12,
                        height: screenWidth * 0.12,
                        decoration: BoxDecoration(
                          color: AppColors.darkBackground,
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/appscircle.png',
                            width: screenWidth * 0.035,
                            height: screenHeight * 0.02,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Store location",
                          style: AppTextStyles.airbnbCerealText(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 8.0,
                              height: 8.0,
                              child: Image.asset(
                                'assets/icons/location.png',
                                width: 20.0,
                                height: 20.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Mondolibug, Sylhet",
                              style: AppTextStyles.airbnbCerealText(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/myCart');
                          },
                          child: Container(
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
                        ),
                        Positioned(
                          top: 3.0,
                          right: 4.0,
                          child: Container(
                            width: 8.0,
                            height: 8.0,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const CustomTextField(),
                const SizedBox(
                  height: 16,
                ),
                const HorizontalListView(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Shoes",
                      style: AppTextStyles.airbnbCerealText(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "See all",
                      style: AppTextStyles.airbnbCerealText(
                        color: AppColors.customblue,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const PopularShoeCardList(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Arrival Shoes",
                      style: AppTextStyles.airbnbCerealText(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "See all",
                      style: AppTextStyles.airbnbCerealText(
                        color: AppColors.customblue,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const PopularArrivalShoeCardList()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          color: AppColors.darkBackground,
          buttonBackgroundColor: AppColors.customBlue,
          backgroundColor: AppColors.background,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          index: _currentIndex,
          items: [
            Image.asset(
              'assets/icons/homepage.png',
              width: 30,
              height: 30,
              color: _currentIndex == 0
                  ? AppColors.textPrimary
                  : AppColors.textSecondary,
            ),
            Image.asset('assets/icons/heart.png',
                width: 30, height: 30, color: AppColors.textPrimary),
            Image.asset('assets/icons/shop.png',
                width: 30, height: 30, color: AppColors.textPrimary),
            Image.asset('assets/icons/notification.png',
                width: 30, height: 30, color: AppColors.textPrimary),
            Image.asset('assets/icons/user.png',
                width: 30, height: 30, color: AppColors.textPrimary),
          ]),
    );
  }
}
