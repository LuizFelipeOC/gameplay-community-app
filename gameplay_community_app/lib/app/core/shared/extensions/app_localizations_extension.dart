import 'package:flutter/widgets.dart';
import 'package:gameplay_community_app/l10n/app_localizations.dart';

extension AppLocalizationsExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
