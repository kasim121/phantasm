import 'package:flutter/material.dart';
import 'package:phantasm/core/extensions/extensions.dart';
import 'package:provider/provider.dart';
import '../../../../confi/themes/app_colors.dart';
import '../../../../confi/themes/app_text_style.dart';
import '../providers/onbarding_provider.dart';
import '../widgets/custome_onboarding_button.dart';
import '../widgets/ellipses.dart';
import '../widgets/indicators.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final onboardingProvider = Provider.of<OnboardingProvider>(context);

    if (onboardingProvider.steps.isEmpty) {
      onboardingProvider.loadSteps();
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Stack(
          children: [
            Ellipses(currentPage: _currentPage),
            PageView.builder(
              controller: _pageController,
              itemCount: onboardingProvider.steps.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                final step = onboardingProvider.steps[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: _currentPage == 0
                          ? const EdgeInsets.only(left: 65.0, top: 105)
                          : const EdgeInsets.only(
                              left: 65.0,
                              top: 90,
                            ),
                      child: Image.asset(
                        step.imagePath,
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.250,
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(
                        step.title,
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    _currentPage == 0
                        ? Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 40),
                            child: SizedBox(
                                width: double.infinity,
                                child: FittedBox(
                                  child: Text(
                                    step.description.formatDescription(
                                        targetWord: "Fashionable"),
                                    style: AppTextStyles.airbnbCerealText(
                                      color: AppColors.grayShade,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                )),
                          )
                        : Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 40),
                            child: SizedBox(
                                width: double.infinity,
                                child: FittedBox(
                                  child: Text(
                                    step.description
                                        .formatDescription(targetWord: 'And'),
                                    style: AppTextStyles.airbnbCerealText(
                                      color: AppColors.grayShade,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                )),
                          ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Indicators(
                            currentPage: _currentPage,
                            totalPages: onboardingProvider.steps.length + 1,
                          ),
                          const SizedBox(height: 20),
                          CustomElevatedButton(
                            text: _currentPage == 0 ? 'Get Started' : 'Next',
                            onPressed: () {
                              if (_currentPage == 1) {
                                Navigator.pushNamed(context, '/login');
                              } else if (_currentPage == 0) {
                                Navigator.pushNamed(context, '/login');
                              } else {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                            backgroundColor: AppColors.customBlue,
                            textColor: AppColors.textPrimary,
                            fontSize: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
