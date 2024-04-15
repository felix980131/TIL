import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart';

@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  FutureOr<int> build(int initialValue) async {
    ref.onDispose(() {
      print("[CounterProvier] disposed");
    });
    await waitSecond();

    return initialValue;
  }

  Future<void> waitSecond() => Future.delayed(const Duration(seconds: 1));

  Future<void> increment() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await waitSecond();

      return state.value! + 1;
    });
  }

  Future<void> decrement() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await waitSecond();

      return state.value! - 1;
    });
  }
}
