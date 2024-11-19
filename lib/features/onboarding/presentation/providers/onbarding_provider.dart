import 'package:flutter/material.dart';
import '../../domain/entities/onboarding_entity.dart';
import '../../domain/usecase/get_onboarding_data_usecase.dart';

class OnboardingProvider extends ChangeNotifier {
  final GetOnboardingSteps getOnboardingSteps;

  OnboardingProvider(this.getOnboardingSteps);

  List<OnboardingStep> _steps = [];
  List<OnboardingStep> get steps => _steps;

  void loadSteps() {
    _steps = getOnboardingSteps.execute();
    debugPrint("list data ${_steps.first.description}");
    notifyListeners();
  }
}
