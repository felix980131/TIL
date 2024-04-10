import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_provider/pages/basic/basic_provider.dart';

class BasicPage extends ConsumerWidget {
  const BasicPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<int>(counterProvider, (previous, next) {
      if (next == 3) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text("counter: $next"),
              );
            });
      }
    });

    final value = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('StateProvider'),
      ),
      body: Center(
        child: Text(
          '$value',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final val = ref.read(counterProvider.notifier);
          val.state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
