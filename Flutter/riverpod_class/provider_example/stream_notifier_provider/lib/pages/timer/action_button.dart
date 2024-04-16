import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stream_provider/pages/timer/timer_provider.dart';
import 'package:stream_provider/pages/timer/timer_state.dart';

class ActionButtons extends ConsumerWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(timerProvider);

    if (state is! AsyncData) {
      return const SizedBox.shrink();
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...switch (state.value!) {
          TimerInitial() => [
              FloatingActionButton(
                onPressed: () {
                  ref.read(timerProvider.notifier).startTimer();
                },
                child: const Icon(Icons.play_arrow),
              )
            ],
          TimerRunner() => [
              FloatingActionButton(
                onPressed: () {
                  ref.read(timerProvider.notifier).pauseTimer();
                },
                child: const Icon(Icons.pause),
              ),
              FloatingActionButton(
                onPressed: () {
                  ref.read(timerProvider.notifier).resetTimer();
                },
                child: const Icon(Icons.replay),
              )
            ],
          TimerPaused() => [
              FloatingActionButton(
                onPressed: () {
                  ref.read(timerProvider.notifier).resumeTimer();
                },
                child: const Icon(Icons.play_arrow),
              ),
              FloatingActionButton(
                onPressed: () {
                  ref.read(timerProvider.notifier).resetTimer();
                },
                child: const Icon(Icons.replay),
              )
            ],
          TimerFinished() => [
              FloatingActionButton(
                onPressed: () {
                  ref.read(timerProvider.notifier).resetTimer();
                },
                child: const Icon(Icons.replay),
              )
            ],
        }
      ],
    );
  }
}
