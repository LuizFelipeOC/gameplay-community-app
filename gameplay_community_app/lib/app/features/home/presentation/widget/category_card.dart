import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/themes/colors/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.title, required this.icon, required this.onPres});

  final String title;
  final Widget icon;
  final Function onPres;

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;

    return Container(
      decoration: BoxDecoration(
        gradient: brightness == Brightness.light ? AppColors.linearBackgroundCardShadowLight : AppColors.linearBackgroundCardShadowDark,
        border: brightness == Brightness.light ? .all(color: AppColors.textHeadingDark) : .all(color: Color(0xff243189)),
        borderRadius: .circular(12),
      ),
      width: 104,
      height: 120,
    );
  }
}
