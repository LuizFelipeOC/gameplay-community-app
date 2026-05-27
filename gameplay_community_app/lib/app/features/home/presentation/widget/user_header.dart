import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/extensions/app_localizations_extension.dart';
import 'package:gameplay_community_app/app/core/shared/themes/colors/app_colors.dart';
import 'package:gameplay_community_app/app/router/app_routes.dart';
import 'package:go_router/go_router.dart';

class UserHeader extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const UserHeader({super.key, this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
      padding: .only(left: 16, right: 16, top: 46),
      color: Theme.of(context).brightness == Brightness.light ? AppColors.surfaceLightHigh : AppColors.surfaceDarkHigh,
      height: preferredSize.height,
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 58,
                width: 58,
                decoration: BoxDecoration(borderRadius: .circular(12)),
                child: ClipRRect(borderRadius: .circular(12), child: Image.network('https://avatars.githubusercontent.com/u/62258859?v=4&size=64', width: 58, height: 58)),
              ),
              SizedBox(width: 22),
              Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: l10n.homeGreetingPrefix,
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 24, fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                          text: 'Luiz',
                          style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Text(l10n.homeVictoryDaySubtitle, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ],
          ),

          InkWell(
            onTap: () {
              context.push(AppRoutes.formCreateRoom);
            },
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(12)),
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
