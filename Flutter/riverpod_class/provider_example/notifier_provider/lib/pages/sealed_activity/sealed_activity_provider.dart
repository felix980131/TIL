import 'package:notifier_provider/models/activity.dart';
import 'package:notifier_provider/pages/sealed_activity/sealed_activity.dart';
import 'package:notifier_provider/providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sealed_activity_provider.g.dart';

@riverpod
class SealedActivity extends _$SealedActivity {
  @override
  SealedActivityState build() {
    ref.onDispose(() {
      print("[SealedActivity] disposed");
    });
    return SealedActivityInitial();
  }

  Future<void> fetchActivity(String activityType) async {
    state = const SealedActivityLoading();
    try {
      final response = await ref.read(dioProvider).get('?type=$activityType');

      final activity = Activity.fromJson(response.data);

      state = SealedActivitySuccess(activity: activity);
    } catch (e) {
      state = SealedActivityFailure(error: e.toString());
    }
  }
}
