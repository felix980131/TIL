import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auto_dispose_family_provider.g.dart';

class Counter {
  final int count;

  const Counter({required this.count});

  @override
  String toString() => 'Counter(count: $count)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Counter && other.count == count;
  }

  @override
  int get hashCode => count.hashCode;
}

final counterProvider = Provider.autoDispose.family<int, Counter>(
  (ref, c) {
    ref.onDispose(() {
      print("[counterProvider $c] disposed");
    });
    return c.count;
  },
);

// final autoDisposeFamilyHelloProvider =
//     Provider.autoDispose.family<String, String>((ref, name) {
//   ref.onDispose(() {
//     print("[autoDisposeFamilyHelloProvider $name] disposed");
//   });

//   return "$name Hello";
// });

@riverpod
String autoDisposeFamilyHello(AutoDisposeFamilyHelloRef ref, String there) {
  ref.onDispose(() {
    print("[autoDisposeFamilyHelloProvider $there] disposed");
  });

  return "$there Hello";
}
