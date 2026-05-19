import 'package:flutter/material.dart';

final class AppColors {
  static const Color primary = Color(0xFFE51C44);
  static const Color secondary = Color(0xFF495BCC);

  static const Color textHeading = Color(0xFFDDE3F0);
  static const Color textBody = Color(0xFFABB1CC);

  static const LinearGradient primaryGradient = LinearGradient(colors: [Color(0xFF0E1647), Color(0xFF0A1033)], begin: Alignment.topCenter, end: Alignment.bottomCenter, stops: [0.0, 1.0]);

  static const LinearGradient linearImageColor = LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0x000C123B), Color(0xFF0C123B)], stops: [0.0, 1.0]);
}
