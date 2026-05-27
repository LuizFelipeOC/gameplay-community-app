import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/themes/colors/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final GestureTapCallback onTap;

  const CustomAppBar({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).brightness == Brightness.light ? AppColors.surfaceLightHigh : AppColors.surfaceDarkHigh;
    final textStyle = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: .only(top: 30),
      height: preferredSize.height,
      color: backgroundColor,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: onTap,
              icon: Icon(Icons.chevron_left, size: 26, color: colorScheme.primary),
            ),
          ),
          Text(title, style: textStyle.headlineMedium, textAlign: TextAlign.center),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(140);
}
