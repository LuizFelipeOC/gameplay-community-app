import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/config/supabase/supabase_config.dart';
import 'package:gameplay_community_app/app/core/shared/result.dart';
import 'package:gameplay_community_app/app/gameplay_community_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final result = await SupabaseConfig.initialize();

  switch (result) {
    case Ok():
      break;
    case Err(:final failure) when failure is SupabaseFailureInitializeResult:
      debugPrint('Supabase: ${failure.message}');
    case Err(:final failure):
      debugPrint('Supabase: $failure');
  }

  runApp(const GameplayCommunityApp());
}
