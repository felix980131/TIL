import 'package:notifier_provider/pages/enum_async_activity/enum_async_activity_state.dart';
import 'package:notifier_provider/providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/activity.dart';

part 'enum_async_activity_provider.g.dart';

@riverpod
class EnumAsyncActivity extends _$EnumAsyncActivity {
  EnumAsyncActivity() {
    print("[EnumAsyncActivity] constructor called");
  }

  @override
  EnumAsyncActivityState build() {
    print("[EnumAsyncActivity] initialized");

    ref.onDispose(() {
      print("[EnumAsyncActivity] disposed");
    });

    state = EnumAsyncActivityState.initial();

    fetchActivity(activityTypes[0]);

    return EnumAsyncActivityState.initial();
  }

  Future<void> fetchActivity(String activityType) async {
    state = state.copyWith(status: ActivityStatus.loading);

    try {
      final response = await ref.read(dioProvider).get('?type=$activityType');

      final activity = Activity.fromJson(response.data);

      state =
          state.copyWith(status: ActivityStatus.success, acticity: activity);
    } catch (e) {
      state =
          state.copyWith(status: ActivityStatus.failure, error: e.toString());
    }
  }
}
