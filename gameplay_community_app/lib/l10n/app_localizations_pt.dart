// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get authTitle => 'Conecte-se \ne organize suas jogatinas';

  @override
  String get authSubtitle =>
      'Crie grupos para jogar seus games\n favoritos com seus amigos';

  @override
  String get discordSignIn => 'Entrar com Discord';

  @override
  String get homeGreetingPrefix => 'Olá, ';

  @override
  String get homeVictoryDaySubtitle => 'Hoje é dia de vitória';

  @override
  String get homeCategoryTitle => 'Categoria';

  @override
  String get homeCategoryRanked => 'Ranqueada';

  @override
  String get homeCategoryDuel => 'Duelo 1x1';

  @override
  String get homeCategoryFun => 'Diversão';

  @override
  String get homeScheduledMatchesTitle => 'Partidas agendadas';

  @override
  String get homeScheduledMatchesEmpty =>
      'Nenhuma partida agendada no momento.\nToque em + para criar a primeira.';

  @override
  String get formCreateRoomSelectServer => 'Selecione um servidor';
}
