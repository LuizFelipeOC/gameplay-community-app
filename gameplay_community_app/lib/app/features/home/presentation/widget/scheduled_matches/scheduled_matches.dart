import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/extensions/app_localizations_extension.dart';

class ScheduledMatches extends StatefulWidget {
  const ScheduledMatches({super.key});

  @override
  State<ScheduledMatches> createState() => _ScheduledMatchesState();
}

class _ScheduledMatchesState extends State<ScheduledMatches> {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final l10n = context.l10n;

    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: .only(left: 12, right: 12, bottom: 12),
            child: Text(l10n.homeScheduledMatchesTitle, style: textStyle.bodyLarge?.copyWith(fontSize: 18)),
          ),
        ),
        SliverList.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const SizedBox();
          },
        ),
      ],
    );
  }
}
