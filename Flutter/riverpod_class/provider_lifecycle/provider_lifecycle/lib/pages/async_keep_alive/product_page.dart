import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_lifecycle/pages/async_keep_alive/providers.dart';

class ProductPage extends ConsumerWidget {
  final int productId;
  const ProductPage({super.key, required this.productId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final singleProduct = ref.watch(getProductProvider(productId: productId));

    return Scaffold(
        appBar: AppBar(
          title: const Text('Product Detail'),
        ),
        body: singleProduct.when(
            data: (product) {
              return ListView(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Text(
                          productId.toString(),
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                ],
              );
            },
            error: (e, st) => Center(
                  child: Text(
                    e.toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
            loading: () => const CircularProgressIndicator()));
  }
}
