import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notifier_provider/models/activity.dart';
import 'package:notifier_provider/pages/enum_activity/enum_activity_provider.dart';
import 'package:notifier_provider/pages/enum_activity/enum_activity_state.dart';

class EnumActivityPage extends ConsumerStatefulWidget {
  const EnumActivityPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EnumActivityPageState();
}

class _EnumActivityPageState extends ConsumerState<EnumActivityPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      ref.read(enumActivityProvider.notifier).fetchActivity(activityTypes[0]);
    });
  }

  @override
  Widget build(BuildContext context) {
    final activityState = ref.watch(enumActivityProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("EnumActivityNotifier"),
      ),
      body: switch (activityState.status) {
        ActivityStatus.initial => const Center(
            child: Text(
              "Get some activity",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ActivityStatus.loading =>
          const Center(child: CircularProgressIndicator()),
        ActivityStatus.failure => Center(
            child: Text(
              activityState.error,
              style: const TextStyle(fontSize: 20, color: Colors.red),
            ),
          ),
        ActivityStatus.success =>
          ActivityWidget(activity: activityState.acticity)
      },
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            final randomNumber = Random().nextInt(activityTypes.length);

            ref
                .read(enumActivityProvider.notifier)
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
