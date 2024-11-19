import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/onboarding/data/repositories/onboarding_repository.dart';
import 'features/onboarding/domain/usecase/get_onboarding_data_usecase.dart';
import 'features/onboarding/presentation/providers/onbarding_provider.dart';
import 'features/onboarding/presentation/screen/onbarding_started_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            final repository = OnboardingRepositoryImpl();
            final getOnboardingSteps = GetOnboardingSteps(repository);
            return OnboardingProvider(getOnboardingSteps);
          },
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // Define routes for navigation
        initialRoute: '/onboarding',
        routes: {
          '/onboarding': (context) => const OnboardingScreen(),
          //'/home': (context) => const HomeScreen(), // Example: A home screen
        },
      ),
    );
  }
}
