import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/extensions/media_size_extension.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/background_scaffold/background_scaffold_widget.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/entrance/fade_slide_entrance.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/category_section/category_card_list.dart';
import 'package:gameplay_community_app/app/features/home/presentation/widget/home_entrance_animations.dart';
import 'package:gameplay_community_app/app/features/home/presentation/widget/scheduled_matches/scheduled_matches.dart';
import 'package:gameplay_community_app/app/features/home/presentation/widget/user_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late final HomeEntranceAnimations _animations;

  @override
  void initState() {
    super.initState();
    _animations = HomeEntranceAnimations(vsync: this);
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
    const headerHeight = 140.0;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(headerHeight),
        child: FadeSlideEntrance(
          animation: _animations.header,
          child: const UserHeader(height: headerHeight),
        ),
      ),
      body: BackgroundScaffoldWidget(
        height: height,
        width: width,
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: Padding(padding: EdgeInsets.only(top: 40))),
            SliverToBoxAdapter(child: CategoryCardList(entranceAnimation: _animations.categories)),
            const SliverToBoxAdapter(child: Padding(padding: EdgeInsets.only(top: 40))),
            ScheduledMatches(entranceAnimation: _animations.scheduled),
          ],
        ),
      ),
    );
  }
}
