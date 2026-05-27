import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/extensions/app_localizations_extension.dart';
import 'package:gameplay_community_app/app/core/shared/app_assets/app_assets.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/app_svg/app_svg_widget.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/entrance/fade_slide_entrance.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/category_section/category_card.dart';

class CategoryCardList extends StatefulWidget {
  const CategoryCardList({super.key, this.entranceAnimation});

  final Animation<double>? entranceAnimation;

  @override
  State<CategoryCardList> createState() => _CategoryCardListState();
}

class _CategoryCardListState extends State<CategoryCardList> {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final l10n = context.l10n;

    final content = Padding(
      padding: .only(left: 12, right: 12),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(l10n.homeCategoryTitle, style: textStyle.bodyLarge?.copyWith(fontSize: 18)),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              CategoryCard(
                title: l10n.homeCategoryRanked,
                icon: AppSvgWidget(assetName: AppAssets.rankedIcon),
                onPres: () {},
              ),
              CategoryCard(
                title: l10n.homeCategoryDuel,
                icon: AppSvgWidget(assetName: AppAssets.swordIcon),
                onPres: () {},
              ),
              CategoryCard(
                title: l10n.homeCategoryFun,
                icon: AppSvgWidget(assetName: AppAssets.happyPersonIcon),
                onPres: () {},
              ),
            ],
          ),
        ],
      ),
    );

    final animation = widget.entranceAnimation;
    if (animation == null) return content;
    return FadeSlideEntrance(animation: animation, child: content);
  }
}
