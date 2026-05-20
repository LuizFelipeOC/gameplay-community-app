import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/extensions/media_size_extension.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/background_scaffold/background_scaffold_widget.dart';
import 'package:gameplay_community_app/app/features/auth/presentation/widgets/auth_entrance.dart';
import 'package:gameplay_community_app/app/features/auth/presentation/widgets/auth_entrance_animations.dart';
import 'package:gameplay_community_app/app/features/auth/presentation/widgets/auth_header_section.dart';
import 'package:gameplay_community_app/app/features/auth/presentation/widgets/auth_hero_section.dart';
import 'package:gameplay_community_app/app/features/auth/presentation/widgets/discord_sign_in_button.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with SingleTickerProviderStateMixin {
  late final AuthEntranceAnimations _animations;

  @override
  void initState() {
    super.initState();
    _animations = AuthEntranceAnimations(vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _animations.play();
    });
  }

  @override
  void dispose() {
    _animations.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = context.mediaSize.height;
    final width = context.mediaSize.width;

    return BackgroundScaffoldWidget(
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            AuthEntrance(
              animation: _animations.hero,
              child: AuthHeroSection(width: width),
            ),
            AuthEntrance(
              animation: _animations.header,
              child: const AuthHeaderSection(),
            ),
            const SizedBox(height: 48),
            AuthEntrance(
              animation: _animations.button,
              child: DiscordSignInButton(width: width, onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
