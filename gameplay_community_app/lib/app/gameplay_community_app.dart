import 'package:flutter/material.dart';
import 'package:gameplay_community_app/l10n/app_localizations.dart';
import 'package:gameplay_community_app/app/core/shared/themes/app_theme.dart';
import 'package:gameplay_community_app/app/features/splash/presentation/splash_controller.dart';
import 'package:gameplay_community_app/app/router/app_router.dart';
import 'package:provider/provider.dart';

class GameplayCommunityApp extends StatefulWidget {
  const GameplayCommunityApp({super.key});

  @override
  State<GameplayCommunityApp> createState() => _GameplayCommunityAppState();
}

class _GameplayCommunityAppState extends State<GameplayCommunityApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => SplashController())],
      child: MaterialApp.router(
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.system,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
