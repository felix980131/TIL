import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future_provider/pages/users/users_providers.dart';

class FamilyDisposePage extends ConsumerWidget {
  const FamilyDisposePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(userDetailProvider(1));
    ref.watch(userDetailProvider(2));

    return Scaffold(
        appBar: AppBar(
          title: const Text('Family Dispose'),
        ),
        body: Center(
          child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              children: [
                OutlinedButton(
                    onPressed: () {
                      // family provider에 arg를 넘겨주지 않아도 됨
                      // 모든 family provider가 rebuild 된다.
                      ref.invalidate(userDetailProvider);
                      ref.invalidate(userDetailProvider(1));
                    },
                    child: Text(
                      "Invalidate",
                      style: Theme.of(context).textTheme.titleLarge,
                    )),
                const SizedBox(height: 20),
                OutlinedButton(
                    onPressed: () {
                      return ref.refresh(userDetailProvider(1));
                    },
                    child: Text(
                      "refresh",
                      style: Theme.of(context).textTheme.titleLarge,
                    )),
              ]),
        ));
  }
}
