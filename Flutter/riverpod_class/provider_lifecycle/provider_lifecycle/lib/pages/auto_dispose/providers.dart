import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
class AnotherCounter extends _$AnotherCounter {
  @override
  int build() {
    print("[anotherCounterProvider] initalized");

    ref.onDispose(() {
      print("[anotherCounterProvider] disposed");
    });

    ref.onCancel(() {
      print("[anotherCounterProvider] cancelled");
    });

    ref.onResume(() {
      print("[anotherCounterProvider] resumed");
    });

    ref.onAddListener(() {
      print("[anotherCounterProvider] listener add");
    });

    ref.onRemoveListener(() {
      print("[anotherCounterProvider] listener removed");
    });

    return 10;
  }

  void increment() => state += 10;
}

@riverpod
class AutoDispose extends _$AutoDispose {
  @override
  int build() {
    print("[autoDisposeProvider] initalized");

    ref.onDispose(() {
      print("[autoDisposeProvider] disposed");
    });

    ref.onCancel(() {
      print("[autoDisposeProvider] cancelled");
    });

    ref.onResume(() {
      print("[autoDisposeProvider] resumed");
    });

    ref.onAddListener(() {
      print("[autoDisposeProvider] listener add");
    });

    ref.onRemoveListener(() {
      print("[autoDisposeProvider] listener removed");
    });

    return 0;
  }

  void increment() => state++;
}
