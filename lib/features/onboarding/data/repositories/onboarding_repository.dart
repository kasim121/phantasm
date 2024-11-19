import '../../domain/entities/onboarding_entity.dart';
import '../../domain/repositories/onbarding_repositories.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  @override
  List<OnboardingStep> getOnboardingSteps() {
    return [
      OnboardingStep(
        imagePath: 'assets/images/shoe.png',
        title: 'Start Journey With Shoes',
        description: 'Smart, Gorgeous & Fashionable Collection',
      ),
      OnboardingStep(
        imagePath: 'assets/images/shoe.png',
        title: 'Follow Latest Style Shoes',
        description:
            'There Are Many Beautiful And Attractive Plants To Your Room',
      ),
    ];
  }
}
