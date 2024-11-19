import 'package:flutter/material.dart';
import 'package:phantasm/confi/themes/app_colors.dart';
import 'package:phantasm/features/onboarding/presentation/widgets/custome_button.dart';

import '../../../../confi/themes/app_text_style.dart';
import '../widgets/ellipses.dart';
import '../widgets/indicators.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Stack(
          children: [
            const Ellipses(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 65.0, top: 105),
                  child: Image.asset(
                    'assets/images/shoe.png',
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.250,
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Start Journey\nWith Shoes',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: FittedBox(
                      child: Text(
                        'Smart, Gorgeous & Fashionable\nCollection',
                        style: AppTextStyles.airbnbCerealText(
                          color: AppColors.grayShade,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Indicators(),
                      const SizedBox(height: 20),
                      CustomElevatedButton(
                        text: 'Get Started',
                        onPressed: () {},
                        backgroundColor: AppColors.customBlue,
                        textColor: AppColors.textPrimary,
                        fontSize: 18,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import '../../../../confi/themes/app_colors.dart';
// import '../../../../confi/themes/app_text_style.dart';
// import '../widgets/custome_button.dart';
// import '../widgets/ellipses.dart';
// import '../widgets/indicators.dart';

// class OnboardingScreen extends StatelessWidget {
//   const OnboardingScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.background,
//       body: SafeArea(
//         child: Stack(
//           children: [
//             const Ellipses(),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 65.0, top: 105),
//                   child: Image.asset(
//                     'assets/images/shoe.png',
//                     width: MediaQuery.of(context).size.width * 0.8,
//                     height: MediaQuery.of(context).size.height * 0.250,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 70,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(left: 40.0),
//                   child: Text(
//                     'Start Journey\nWith Shoes',
//                     style: TextStyle(
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold,
//                       color: AppColors.textPrimary,
//                     ),
//                     textAlign: TextAlign.start,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 40.0),
//                   child: SizedBox(
//                     width: double.infinity,
//                     child: Flexible(
//                       child: FittedBox(
//                         child: Text(
//                           'Smart, Gorgeous & Fashionable\nCollection',
//                           style: AppTextStyles.airbnbCerealText(
//                             color: AppColors.grayShade,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           textAlign: TextAlign.start,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 40.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Indicators(),
//                       const SizedBox(height: 20),
//                       CustomElevatedButton(
//                         text: 'Get Started',
//                         onPressed: () {},
//                         backgroundColor: AppColors.customBlue,
//                         textColor: AppColors.textPrimary,
//                         fontSize: 18,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
