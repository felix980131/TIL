// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'basic_provider.g.dart';

// 직접 작성
// final helloProvider = Provider<String>((ref) {
//   ref.onDispose(() {
//     print("[helloProvider] disposed");
//   });
//   return "Hello";
// });

// final worldProvider = Provider<String>((ref) {
//   ref.onDispose(() {
//     print("[worldProvider] disposed");
//   });
//   return "World";
// });

// code generation 사용
@Riverpod(keepAlive: true)
String hello(HelloRef ref) {
  ref.onDispose(() {
    print("[helloProvider] disposed");
  });
  return "Hello";
}

@Riverpod(keepAlive: true)
String world(WorldRef ref) {
  ref.onDispose(() {
    print("[worldProvider] disposed");
  });
  return "World";
}
