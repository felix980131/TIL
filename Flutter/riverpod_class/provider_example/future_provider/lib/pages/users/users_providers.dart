import 'package:future_provider/models/user.dart';
import 'package:future_provider/providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final userListProvider = FutureProvider.autoDispose<List<User>>((ref) async {
  ref.onDispose(() {
    print("[userListProvider] disposed");
  });

  final response = await ref.watch(dioProvider).get('/users');

  // error 테스트용
  // throw "Fail to fetch user list";

  final List userList = response.data;

  final users = [for (final user in userList) User.fromJson(user)];

  return users;
});
