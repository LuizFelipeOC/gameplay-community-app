import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/themes/colors/app_colors.dart';

class BackgroundScaffoldWidget extends StatelessWidget {
  const BackgroundScaffoldWidget({super.key, this.child, this.height, this.width, this.appBar});

  final Widget? child;
  final PreferredSizeWidget? appBar;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Container(
          decoration: BoxDecoration(gradient: AppColors.primaryGradient),
          child: child,
        ),
      ),
      appBar: appBar,
    );
  }
}
