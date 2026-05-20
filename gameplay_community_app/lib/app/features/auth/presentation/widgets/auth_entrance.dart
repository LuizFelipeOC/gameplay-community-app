import 'package:flutter/material.dart';

/// Fade + slide vertical para entrada de seções da [AuthScreen].
class AuthEntrance extends StatefulWidget {
  const AuthEntrance({super.key, required this.animation, required this.child});

  final Animation<double> animation;
  final Widget child;

  @override
  State<AuthEntrance> createState() => _AuthEntranceState();
}

class _AuthEntranceState extends State<AuthEntrance> {
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _attachSlideAnimation();
  }

  @override
  void didUpdateWidget(AuthEntrance oldWidget) {
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
