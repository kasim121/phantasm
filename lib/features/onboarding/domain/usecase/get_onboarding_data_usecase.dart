import '../entities/onboarding_entity.dart';
import '../repositories/onbarding_repositories.dart';

class GetOnboardingSteps {
  final OnboardingRepository repository;

  GetOnboardingSteps(this.repository);

  List<OnboardingStep> execute() {
    return repository.getOnboardingSteps();
  }
}
