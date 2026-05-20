import 'package:flutter/material.dart';

/// Controla o stagger de entrada da [AuthScreen].
class AuthEntranceAnimations {
  AuthEntranceAnimations({required TickerProvider vsync})
    : controller = AnimationController(
        vsync: vsync,
        duration: const Duration(milliseconds: 400),
      ) {
    hero = _interval(0.0, 0.7);
    header = _interval(0.12, 0.82);
    button = _interval(0.24, 1.0);
  }

  final AnimationController controller;
  late final Animation<double> hero;
  late final Animation<double> header;
  late final Animation<double> button;

  Animation<double> _interval(double begin, double end) {
    return CurvedAnimation(
      parent: controller,
      curve: Interval(begin, end, curve: Curves.easeOutCubic),
    );
  }

  void play() {
    controller
      ..reset()
      ..forward();
  }

  void dispose() {
    controller.dispose();
  }
}
