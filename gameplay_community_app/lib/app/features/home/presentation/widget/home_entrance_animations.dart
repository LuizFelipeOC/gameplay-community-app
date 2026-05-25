import 'package:flutter/material.dart';

/// Controla o stagger de entrada da [HomeScreen].
class HomeEntranceAnimations {
  HomeEntranceAnimations({required TickerProvider vsync})
    : controller = AnimationController(
        vsync: vsync,
        duration: const Duration(milliseconds: 450),
      ) {
    header = _interval(0.0, 0.68);
    categories = _interval(0.1, 0.78);
    scheduled = _interval(0.22, 1.0);
  }

  final AnimationController controller;
  late final Animation<double> header;
  late final Animation<double> categories;
  late final Animation<double> scheduled;

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
