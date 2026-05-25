import 'package:flutter/material.dart';

/// Fade + slide vertical para entrada escalonada de seções.
class FadeSlideEntrance extends StatefulWidget {
  const FadeSlideEntrance({super.key, required this.animation, required this.child});

  final Animation<double> animation;
  final Widget child;

  @override
  State<FadeSlideEntrance> createState() => _FadeSlideEntranceState();
}

class _FadeSlideEntranceState extends State<FadeSlideEntrance> {
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _attachSlideAnimation();
  }

  @override
  void didUpdateWidget(FadeSlideEntrance oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.animation != widget.animation) {
      _attachSlideAnimation();
    }
  }

  void _attachSlideAnimation() {
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.08),
      end: Offset.zero,
    ).animate(widget.animation);
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: widget.animation,
      child: SlideTransition(position: _slideAnimation, child: widget.child),
    );
  }
}
