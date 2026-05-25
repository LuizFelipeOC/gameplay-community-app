import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/extensions/media_size_extension.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/background_scaffold/background_scaffold_widget.dart';
import 'package:gameplay_community_app/app/features/home/presentation/widget/category_card_list.dart';
import 'package:gameplay_community_app/app/features/home/presentation/widget/user_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = context.mediaSize.height;
    final width = context.mediaSize.width;

    return Scaffold(
      appBar: UserHeader(height: 140),
      body: BackgroundScaffoldWidget(
        height: height,
        width: width,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: Padding(padding: .only(top: 40))),
            CategoryCardList(),
          ],
        ),
      ),
    );
  }
}
