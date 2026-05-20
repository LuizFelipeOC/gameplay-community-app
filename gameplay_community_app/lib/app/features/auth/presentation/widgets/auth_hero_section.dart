import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/app_assets/app_assets.dart';
import 'package:gameplay_community_app/app/core/shared/themes/colors/app_colors.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/app_svg/app_svg_widget.dart';

class AuthHeroSection extends StatelessWidget {
  const AuthHeroSection({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        AppSvgWidget(assetName: AppAssets.onboardingBackgroundImage, width: width),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              AppAssets.onboardingScreenImage,
              width: 327,
              height: 388,
              fit: BoxFit.contain,
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: 127,
              child: const DecoratedBox(
                decoration: BoxDecoration(gradient: AppColors.linearImageColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
