import 'package:gameplay_community_app/app/core/config/supabase/supabase_env.dart';
import 'package:gameplay_community_app/app/core/shared/result.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final class SupabaseSuccessInitializeResult {
  const SupabaseSuccessInitializeResult();
}

final class SupabaseFailureInitializeResult {
  const SupabaseFailureInitializeResult({required this.message, this.cause});

  final String message;
  final Object? cause;
}

abstract final class SupabaseConfig {
  static Future<Result<SupabaseSuccessInitializeResult>> initialize() async {
    if (!SupabaseEnv.isConfigured) {
      return const Err(
        SupabaseFailureInitializeResult(
          message:
              'SUPABASE_URL e SUPABASE_ANON_KEY não configurados. '
              'Use --dart-define na execução do app.',
        ),
      );
    }

    try {
      await Supabase.initialize(url: SupabaseEnv.url, anonKey: SupabaseEnv.anonKey);
      return const Ok(SupabaseSuccessInitializeResult());
    } catch (error) {
      return Err(SupabaseFailureInitializeResult(message: 'Falha ao inicializar o Supabase.', cause: error));
    }
  }

  static SupabaseClient get client => Supabase.instance.client;
}
