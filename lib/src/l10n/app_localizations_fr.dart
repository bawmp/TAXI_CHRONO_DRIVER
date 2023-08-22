import 'app_localizations.dart';

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Taxi Chrono Driver';

  @override
  String get onboardingScreenTitleOneLabel => 'Accepter une course';

  @override
  String get onboardingScreenTitleTwoLabel => 'Tracking en temps réel';

  @override
  String get onboardingScreenTitleThreeLabel => 'Gagner de l\'argent';

  @override
  String get onboardingScreenTitleFourLabel => 'Activer votre position';

  @override
  String get onboardingScreenUseMyLocationButtonLabel => 'Utiliser ma position';

  @override
  String get signUpScreenSignUpLabel => 'S\'enregistrer';

  @override
  String get signUpScreenWithLabel => 'avec\n';

  @override
  String get signUpScreenEmailAndPhoneNumberLabel => 'un email et un\nnuméro de téléphone';

  @override
  String get signUpScreenEmailHintLabel => 'exemple@exemple.com';

  @override
  String get signUpScreenPhoneNumberHintLabel => 'Numéro de téléphone';

  @override
  String get signUpScreenSignUpButtonLabel => 'S\'enregistrer';

  @override
  String get signUpScreenAlreadyHaveAnAccountLabel => 'Vous avez déjà un compte?';

  @override
  String get signUpScreenSignInButtonLabel => ' Connectez-vous';
}
