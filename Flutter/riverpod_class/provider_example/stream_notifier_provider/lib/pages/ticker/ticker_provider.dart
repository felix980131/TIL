import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ticker_provider.g.dart';

// 직접 작성
// final tickerProvider = StreamProvider<int>((ref) {
//   ref.onDispose(() {
//     print("[tickerProvider] disposed");
//   });

//   return Stream.periodic(const Duration(seconds: 1), (t) => t + 1).take(60);
// });

// code generation
@Riverpod(keepAlive: true)
Stream<int> ticker(TickerRef ref) {
  ref.onDispose(() {
    print("[tickerProvider] disposed");
  });

  return Stream.periodic(const Duration(seconds: 1), (t) => t + 1).take(60);
}
