import 'package:flutter/material.dart';

final class AppColors {
  static const Color primary = Color(0xFFE51C44);
  static const Color secondary = Color(0xFF495BCC);

  // Dark
  static const Color textHeadingDark = Color(0xFFDDE3F0);
  static const Color textBodyDark = Color(0xFFABB1CC);
  static const Color surfaceDark = Color(0xFF0A1033);
  static const Color surfaceDarkHigh = Color(0xFF0E1647);

  // Light
  static const Color textHeadingLight = Color(0xFF0A1033);
  static const Color textBodyLight = Color(0xFF4A5568);
  static const Color surfaceLight = Color(0xFFF5F7FF);
  static const Color surfaceLightHigh = Color(0xFFE8ECF8);

  @Deprecated('Use textHeadingDark ou Theme.of(context).colorScheme.onSurface')
  static const Color textHeading = textHeadingDark;

  @Deprecated('Use textBodyDark ou Theme.of(context).colorScheme.onSurfaceVariant')
  static const Color textBody = textBodyDark;

  static const LinearGradient primaryGradientDark = LinearGradient(colors: [surfaceDarkHigh, surfaceDark], begin: Alignment.topCenter, end: Alignment.bottomCenter, stops: [0.0, 1.0]);

  static const LinearGradient primaryGradientLight = LinearGradient(colors: [surfaceLightHigh, surfaceLight], begin: Alignment.topCenter, end: Alignment.bottomCenter, stops: [0.0, 1.0]);

  @Deprecated('Use primaryGradientOf(Brightness)')
  static const LinearGradient primaryGradient = primaryGradientDark;

  static const LinearGradient linearImageShadowDark = LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0x000C123B), Color(0xFF0C123B)], stops: [0.0, 1.0]);

  static const LinearGradient linearImageShadowLight = LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0x00F5F7FF), Color(0xFFF5F7FF)], stops: [0.0, 1.0]);

  static const LinearGradient linearBackgroundCardShadowDark = LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0x00243189), Color(0xFF1B2565)], stops: [0.2, 2]);
  static const LinearGradient linearBackgroundCardShadowLight = LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [surfaceLightHigh, surfaceLight], stops: [0.2, 2]);

  @Deprecated('Use linearImageShadowOf(Brightness)')
  static const LinearGradient linearImageColor = linearImageShadowDark;

  static LinearGradient primaryGradientOf(Brightness brightness) {
    return brightness == Brightness.dark ? primaryGradientDark : primaryGradientLight;
  }

  static LinearGradient linearImageShadowOf(Brightness brightness) {
    return brightness == Brightness.dark ? linearImageShadowDark : linearImageShadowLight;
  }
}
