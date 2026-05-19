import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/features/splash/presentation/splash_state.dart';

class SplashController extends ValueNotifier<SplashState> {
  SplashController() : super(InitialSplashState());

  void _emitState(SplashState state) {
    value = state;
  }

  Future<void> init() async {
    _emitState(LoadingSplashState());

    await Future.delayed(const Duration(seconds: 2));

    _emitState(ReadySplashState());
  }
}
