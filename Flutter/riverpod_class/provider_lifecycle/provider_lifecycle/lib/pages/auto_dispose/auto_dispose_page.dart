import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_lifecycle/pages/auto_dispose/providers.dart';

class AutoDisposePage extends ConsumerWidget {
  const AutoDisposePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(autoDisposeProvider, (previous, next) {
      if (next % 3 == 0) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text('counter : $next'),
              );
            });
      }
    });

    // final counter = ref.watch(autoDisposeProvider);
    // final anotherCounter = ref.watch(anotherCounterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoDispose'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final counter = ref.watch(autoDisposeProvider);
          final anotherCounter = ref.watch(anotherCounterProvider);
          return Center(
            child: Text('$counter : $anotherCounter'),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            onPressed: () {
              ref.read(autoDisposeProvider.notifier).increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            heroTag: '2',
            onPressed: () {
              ref.read(anotherCounterProvider.notifier).increment();
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
