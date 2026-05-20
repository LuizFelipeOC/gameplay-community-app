import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/themes/colors/app_colors.dart';

class AuthHeaderSection extends StatelessWidget {
  const AuthHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Conecte-se \ne organize suas jogatinas',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.textHeading,
            fontSize: 40,
            height: 1.4,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Text(
          'Crie grupos para jogar seus games\n favoritos com seus amigos',
          style: TextStyle(
            color: AppColors.textHeading,
            fontSize: 15,
            height: 1.8,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
