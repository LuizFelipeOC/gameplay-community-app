import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/themes/colors/app_colors.dart';

final class AppTheme {
  static const ColorScheme _colorScheme = ColorScheme.dark(
    primary: AppColors.primary,
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF8B1534),
    onPrimaryContainer: Color(0xFFFFFFFF),
    secondary: AppColors.secondary,
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFF2E3A8C),
    onSecondaryContainer: Color(0xFFDDE3F0),
    surface: Color(0xFF0A1033),
    onSurface: AppColors.textHeading,
    onSurfaceVariant: AppColors.textBody,
    outline: Color(0xFF495BCC),
    outlineVariant: Color(0xFF3D4A7A),
    error: Color(0xFFF2B8B5),
    onError: Color(0xFF601410),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF0C123B),
  );

  static ThemeData get themeData => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: _colorScheme,
    scaffoldBackgroundColor: _colorScheme.surface,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _colorScheme.primary,
        foregroundColor: _colorScheme.onPrimary,
        disabledBackgroundColor: _colorScheme.primary.withValues(alpha: 0.38),
        disabledForegroundColor: _colorScheme.onPrimary.withValues(alpha: 0.38),
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(color: AppColors.textHeading, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(color: AppColors.textBody),
    ),
  );
}
