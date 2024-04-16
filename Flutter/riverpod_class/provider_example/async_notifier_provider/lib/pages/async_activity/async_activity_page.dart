import 'dart:math';

import 'package:async_notifier_provider/extensions/async_value_xx.dart';
import 'package:async_notifier_provider/models/activity.dart';
import 'package:async_notifier_provider/pages/async_activity/async_activity_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncActivityPage extends ConsumerWidget {
  const AsyncActivityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<Activity>>(asyncActivityProvider, (previous, next) {
      if (next.hasError && !next.isLoading) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(next.error.toString()),
              );
            });
      }
    });

    final activityState = ref.watch(asyncActivityProvider);
    print(activityState.toStr);
    print(activityState.props);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AsyncActivity'),
      ),
      body: activityState.when(
          skipLoadingOnRefresh: false,
          skipError: true,
          data: (activity) => ActivityWidget(activity: activity),
          error: (e, st) => const Center(
                child: Text(
                  'Get some activity',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ),
          loading: () => const CircularProgressIndicator()),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            final randomNumber = Random().nextInt(activityTypes.length);

            ref
                .read(asyncActivityProvider.notifier)
                .fetchActivity(activityTypes[randomNumber]);
          },
          label: Text(
            'New Activity',
            style: Theme.of(context).textTheme.titleLarge,
          )),
    );
  }
}

class ActivityWidget extends StatelessWidget {
  final Activity activity;

  const ActivityWidget({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Text(
            activity.type,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Divider(),
          Text(
            "activity : ${activity.activity}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            "accessibility : ${activity.accessibility}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            "participants : ${activity.participants}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            "price : ${activity.price}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            "key : ${activity.key}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
