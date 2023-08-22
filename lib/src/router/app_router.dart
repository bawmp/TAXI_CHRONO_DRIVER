import 'package:auto_route/auto_route.dart';

import '../features/onboarding/presentation/onboarding_screen.dart';
import '../features/sign_up/presentation/sign_up_screen.dart';
import '../features/splash/presentation/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page, path: '/onboarding'),
        AutoRoute(page: SignUpRoute.page, path: '/sign-up'),
      ];
}
