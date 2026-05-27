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

  @override
  String get homeGreetingPrefix => 'Hello, ';

  @override
  String get homeVictoryDaySubtitle => 'Today\'s a winning day';

  @override
  String get homeCategoryTitle => 'Category';

  @override
  String get homeCategoryRanked => 'Ranked';

  @override
  String get homeCategoryDuel => '1v1 Duel';

  @override
  String get homeCategoryFun => 'Fun';

  @override
  String get homeScheduledMatchesTitle => 'Scheduled matches';

  @override
  String get homeScheduledMatchesEmpty =>
      'No scheduled matches yet.\nTap + to create your first one.';

  @override
  String get formCreateRoomSelectServer => 'Select a server';

  @override
  String get formCreateRoomTitle => 'Schedule match';

  @override
  String get formCreateRoomDateLabel => 'Day and month';

  @override
  String get formCreateRoomTimeLabel => 'Time';

  @override
  String get formCreateRoomDescriptionLabel => 'Description';

  @override
  String get formCreateRoomSubmitButton => 'Schedule';
}
