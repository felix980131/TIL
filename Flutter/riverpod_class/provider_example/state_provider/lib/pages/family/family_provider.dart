import 'package:flutter_riverpod/flutter_riverpod.dart';

final familyCounterProvider = StateProvider.family<int, int>((ref, init) {
  ref.onDispose(() {
    print("[familyCounterProvider] disposed");
  });
  return init;
});
