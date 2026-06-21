
import 'package:flutter/material.dart';
import 'package:ostad_14_ecommerce_project_crafty_bay/l10n/app_localizations.dart';

extension LocalizationExtension on BuildContext {
  AppLocalizations get localization => AppLocalizations.of(this)!;
}