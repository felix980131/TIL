import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
class SyncKeepAliveCounter extends _$SyncKeepAliveCounter {
  @override
  int build() {
    // 데이터 캐싱
    final keeAliveLink = ref.keepAlive();

    Timer? timer;

    print("[syncKeepAliveCounterProvider] initalized");

    ref.onDispose(() {
      print("[syncKeepAliveCounterProvider] disposed, timer cancelled");
      timer?.cancel();
    });

    ref.onCancel(() {
      print("[syncKeepAliveCounterProvider] cancelled, timer started");
      timer = Timer(const Duration(seconds: 10), () {
        keeAliveLink.close();
      });
    });

    ref.onResume(() {
      print("[syncKeepAliveCounterProvider] resumed, timer cancelled");
      timer?.cancel();
    });

    ref.onAddListener(() {
      print("[syncKeepAliveCounterProvider] listener add");
    });

    ref.onRemoveListener(() {
      print("[syncKeepAliveCounterProvider] listener removed");
    });
    return 0;
  }

  void increment() => state++;
}
