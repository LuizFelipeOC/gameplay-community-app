import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/extensions/app_localizations_extension.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/entrance/fade_slide_entrance.dart';

class ScheduledMatches extends StatefulWidget {
  const ScheduledMatches({super.key, this.entranceAnimation});

  final Animation<double>? entranceAnimation;

  @override
  State<ScheduledMatches> createState() => _ScheduledMatchesState();
}

class _ScheduledMatchesState extends State<ScheduledMatches> {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final l10n = context.l10n;

    final content = Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: .only(left: 12, right: 12, bottom: 12),
          child: Text(l10n.homeScheduledMatchesTitle, style: textStyle.bodyLarge?.copyWith(fontSize: 18)),
        ),
        for (var i = 0; i < 10; i++) const SizedBox(),
      ],
    );

    final animation = widget.entranceAnimation;
    return SliverToBoxAdapter(
      child: animation == null ? content : FadeSlideEntrance(animation: animation, child: content),
    );
  }
}
