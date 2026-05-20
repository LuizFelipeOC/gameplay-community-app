/// Credenciais injetadas em build time.
///
/// Arquivo local (não commitar): [dart_defines.dev.json]
///
/// ```bash
/// flutter run --dart-define-from-file=dart_defines.dev.json
/// ```
///
/// Ou no VS Code/Cursor: launch **gameplay_community_app (dev)**.
abstract final class SupabaseEnv {
  static const String url = String.fromEnvironment('SUPABASE_URL');
  static const String anonKey = String.fromEnvironment('SUPABASE_ANON_KEY');

  static bool get isConfigured => url.isNotEmpty && anonKey.isNotEmpty;
}
