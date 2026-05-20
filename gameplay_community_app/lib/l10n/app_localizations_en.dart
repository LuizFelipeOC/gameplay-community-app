// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get authTitle => 'Connect and \norganize your game sessions';

  @override
  String get authSubtitle =>
      'Create groups to play your favorite\ngames with your friends';

  @override
  String get discordSignIn => 'Sign in with Discord';
}
