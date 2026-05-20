import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/app_assets/app_assets.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/app_svg/app_svg_widget.dart';

class DiscordSignInButton extends StatelessWidget {
  const DiscordSignInButton({super.key, required this.width, this.onPressed});

  final double width;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.8,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppSvgWidget(assetName: AppAssets.discordIcon),
            SizedBox(width: 20),
            Text('Entrar com Discord'),
          ],
        ),
      ),
    );
  }
}
