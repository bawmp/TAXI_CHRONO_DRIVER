import 'package:flutter/material.dart';
import 'package:taxichronodriver/src/l10n/app_localizations.dart';

extension AppLocalizationExtension on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this);
}
