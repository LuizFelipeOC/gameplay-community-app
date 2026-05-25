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
  final List<Object> scheduledMatches = [];

  Widget _entrance(Widget child) {
    final animation = widget.entranceAnimation;
    if (animation == null) return child;
    return FadeSlideEntrance(animation: animation, child: child);
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final l10n = context.l10n;

    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: _entrance(
            Padding(
              padding: .only(left: 12, right: 12, bottom: 12),
              child: Text(l10n.homeScheduledMatchesTitle, style: textStyle.bodyLarge?.copyWith(fontSize: 18)),
            ),
          ),
        ),
        if (scheduledMatches.isEmpty)
          SliverToBoxAdapter(
            child: _entrance(
              Padding(
                padding: .symmetric(horizontal: 24, vertical: 32),
                child: Text(
                  l10n.homeScheduledMatchesEmpty,
                  textAlign: TextAlign.center,
                  style: textStyle.bodyMedium,
                ),
              ),
            ),
          )
        else
          SliverList.builder(
            itemCount: scheduledMatches.length,
            itemBuilder: (context, index) {
              return _entrance(
                Padding(
                  padding: .symmetric(horizontal: 12, vertical: 6),
                  child: const SizedBox(height: 72),
                ),
              );
            },
          ),
      ],
    );
  }
}
