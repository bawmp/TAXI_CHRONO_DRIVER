import '../../../router/app_router.dart';

import '../../core/infrastructure/common_import.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/page_indicators.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.expand,
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: [
              OnboardingPage(
                imageUrl: 'assets/images/onboarding1.png',
                title: context.locale.onboardingScreenTitleOneLabel,
                description: '',
              ),
              OnboardingPage(
                imageUrl: 'assets/images/onboarding2.png',
                title: context.locale.onboardingScreenTitleTwoLabel,
                description: '',
              ),
              OnboardingPage(
                imageUrl: 'assets/images/onboarding3.png',
                title: context.locale.onboardingScreenTitleThreeLabel,
                description: '',
              ),
              OnboardingPage(
                imageUrl: 'assets/images/onboarding4.png',
                title: context.locale.onboardingScreenTitleFourLabel,
                description: '',
              ),
            ],
          ),
          if (_currentIndex == 3)
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Center(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width / 2,
                  child: ElevatedButton(
                    onPressed: () {
                      context.pushRoute(const SignUpRoute());
                    },
                    child: Text(
                      context.locale.onboardingScreenUseMyLocationButtonLabel
                          .toUpperCase(),
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackColor,
                              ),
                    ),
                  ),
                ),
              ),
            ).animate().scale(delay: 50.milliseconds).fadeIn(),
          Positioned(
            bottom: 24,
            left: 0,
            right: 0,
            child: PageIndicators(
              index: _currentIndex,
              currentIndex: _currentIndex,
            ),
          )
        ],
      ),
    );
  }
}
