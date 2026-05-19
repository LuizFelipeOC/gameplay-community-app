import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/router/app_router.dart';

class GameplayCommunityApp extends StatefulWidget {
  const GameplayCommunityApp({super.key});

  @override
  State<GameplayCommunityApp> createState() => _GameplayCommunityAppState();
}

class _GameplayCommunityAppState extends State<GameplayCommunityApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: appRouter, debugShowCheckedModeBanner: false);
  }
}
