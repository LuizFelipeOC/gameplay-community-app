import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/themes/colors/app_colors.dart';

final class AppTheme {
  static ThemeData get light => _buildTheme(_lightColorScheme);

  static ThemeData get dark => _buildTheme(_darkColorScheme);

  @Deprecated('Use AppTheme.dark ou AppTheme.light')
  static ThemeData get themeData => dark;

  static const ColorScheme _darkColorScheme = ColorScheme.dark(
    primary: AppColors.primary,
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF8B1534),
    onPrimaryContainer: Color(0xFFFFFFFF),
    secondary: AppColors.secondary,
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFF2E3A8C),
    onSecondaryContainer: Color(0xFFDDE3F0),
    surface: AppColors.surfaceDark,
    onSurface: AppColors.textHeadingDark,
    onSurfaceVariant: AppColors.textBodyDark,
    outline: Color(0xFF495BCC),
    outlineVariant: Color(0xFF3D4A7A),
    error: Color(0xFFF2B8B5),
    onError: Color(0xFF601410),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF0C123B),
  );

  static const ColorScheme _lightColorScheme = ColorScheme.light(
    primary: AppColors.primary,
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFFFD9E0),
    onPrimaryContainer: Color(0xFF5C0F24),
    secondary: AppColors.secondary,
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFDDE3FF),
    onSecondaryContainer: Color(0xFF1A2566),
    surface: AppColors.surfaceLight,
    onSurface: AppColors.textHeadingLight,
    onSurfaceVariant: AppColors.textBodyLight,
    outline: Color(0xFF495BCC),
    outlineVariant: Color(0xFFC5CCE8),
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    shadow: Color(0x1A0A1033),
    scrim: Color(0x660A1033),
  );

  static ThemeData _buildTheme(ColorScheme colorScheme) {
    return ThemeData(
      useMaterial3: true,
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.surface,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          disabledBackgroundColor: colorScheme.primary.withValues(alpha: 0.38),
          disabledForegroundColor: colorScheme.onPrimary.withValues(alpha: 0.38),
          minimumSize: const Size(double.infinity, 56),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(color: colorScheme.onSurface, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(color: colorScheme.onSurfaceVariant),
      ),
    );
  }
}
