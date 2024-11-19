import '../entities/onboarding_entity.dart';

abstract class OnboardingRepository {
  List<OnboardingStep> getOnboardingSteps();
}
