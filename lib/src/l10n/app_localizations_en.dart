import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Taxi Chrono Driver';

  @override
  String get onboardingScreenTitleOneLabel => 'Accept a Job';

  @override
  String get onboardingScreenTitleTwoLabel => 'Tracking Realtime';

  @override
  String get onboardingScreenTitleThreeLabel => 'Earn Money';

  @override
  String get onboardingScreenTitleFourLabel => 'Enable Your Location';

  @override
  String get onboardingScreenUseMyLocationButtonLabel => 'Use my location';

  @override
  String get signUpScreenSignUpLabel => 'Sign up ';

  @override
  String get signUpScreenWithLabel => 'with\n';

  @override
  String get signUpScreenEmailAndPhoneNumberLabel => 'email and phone \nnumber!';

  @override
  String get signUpScreenEmailHintLabel => 'example@example.com';

  @override
  String get signUpScreenPhoneNumberHintLabel => 'Phone number';

  @override
  String get signUpScreenSignUpButtonLabel => 'Sign up';

  @override
  String get signUpScreenAlreadyHaveAnAccountLabel => 'Already have an account?';

  @override
  String get signUpScreenSignInButtonLabel => ' Sign In';
}
