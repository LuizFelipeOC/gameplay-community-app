import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/app_assets/app_assets.dart';
import 'package:gameplay_community_app/app/core/shared/extensions/media_size_extension.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/app_svg/app_svg_widget.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/background_scaffold/background_scaffold_widget.dart';
import 'package:gameplay_community_app/app/features/splash/presentation/splash_controller.dart';
import 'package:gameplay_community_app/app/features/splash/presentation/splash_state.dart';
import 'package:gameplay_community_app/app/router/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SplahScreen extends StatefulWidget {
  const SplahScreen({super.key});

  @override
  State<SplahScreen> createState() => _SplahScreenState();
}

class _SplahScreenState extends State<SplahScreen> {
  late final SplashController _splashController;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _splashController = context.read<SplashController>();
      _splashController.init();

      _splashController.addListener(() {
        if (_splashController.value is ReadySplashState) {
          context.go(AppRoutes.auth);
        }
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _splashController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = context.mediaSize.height;
    final width = context.mediaSize.width;

    return BackgroundScaffoldWidget(
      height: height,
      width: width,
      child: Center(child: AppSvgWidget(assetName: AppAssets.iconApp)),
    );
  }
}
