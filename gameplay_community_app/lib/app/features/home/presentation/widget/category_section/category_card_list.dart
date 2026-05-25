import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/app_assets/app_assets.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/app_svg/app_svg_widget.dart';
import 'package:gameplay_community_app/app/features/home/presentation/widget/category_section/category_card.dart';

class CategoryCardList extends StatefulWidget {
  const CategoryCardList({super.key});

  @override
  State<CategoryCardList> createState() => _CategoryCardListState();
}

class _CategoryCardListState extends State<CategoryCardList> {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return SliverToBoxAdapter(
      child: Padding(
        padding: .only(left: 12, right: 12),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text('Categoria', style: textStyle.bodyLarge?.copyWith(fontSize: 18)),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                CategoryCard(
                  title: 'Ranqueada',
                  icon: AppSvgWidget(assetName: AppAssets.rankedIcon),
                  onPres: () {},
                ),
                CategoryCard(
                  title: 'Duelo 1x1',
                  icon: AppSvgWidget(assetName: AppAssets.swordIcon),
                  onPres: () {},
                ),
                CategoryCard(
                  title: 'Diversão',
                  icon: AppSvgWidget(assetName: AppAssets.happyPersonIcon),
                  onPres: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
