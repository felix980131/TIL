import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoDisposeFamilyCounterProvider =
    StateProvider.autoDispose.family<int, int>((ref, init) {
  ref.onDispose(() {
    print("[autoDisposeFamilyCounterProvider] disposed");
  });
  return init;
});
