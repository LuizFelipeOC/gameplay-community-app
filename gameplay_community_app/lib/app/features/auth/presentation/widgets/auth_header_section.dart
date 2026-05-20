import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/extensions/app_localizations_extension.dart';
import 'package:gameplay_community_app/app/core/shared/themes/colors/app_colors.dart';

class AuthHeaderSection extends StatelessWidget {
  const AuthHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Padding(
      padding: .only(right: 10, left: 10),
      child: Column(
        children: [
          Text(
            l10n.authTitle,
            style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textHeading, fontSize: 40, height: 1.4),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            l10n.authSubtitle,
            style: TextStyle(color: AppColors.textHeading, fontSize: 15, height: 1.8, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
