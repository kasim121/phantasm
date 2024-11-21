import 'package:flutter/material.dart';

import '../../features/home/presentation/screens/main_screen.dart';
import '../../features/login/presentation/screens/login_screen.dart';
import '../../features/mycart/presentation/screens/mycart_screen.dart';
import '../../features/onboarding/presentation/screen/onbarding_started_screen.dart';
import '../../features/shoedetails/presentation/screens/sample_shoe_details_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes(BuildContext context) {
    return {
      '/onboarding': (context) => const OnboardingScreen(),
      '/login': (context) => LoginScreen(),
      '/home': (context) => const MainHomeScreen(),
      '/sampleshoe': (context) => const SampleShoeScreen(),
      '/myCart': (context) => const MyCartScreen(),
    };
  }
}
