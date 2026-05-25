import 'package:flutter/material.dart';

class ScheduledMatches extends StatefulWidget {
  const ScheduledMatches({super.key});

  @override
  State<ScheduledMatches> createState() => _ScheduledMatchesState();
}

class _ScheduledMatchesState extends State<ScheduledMatches> {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: .only(left: 12, right: 12, bottom: 12),
            child: Text('Partidas agendadas', style: textStyle.bodyLarge?.copyWith(fontSize: 18)),
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
