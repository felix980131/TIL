import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_lifecycle/pages/async_keep_alive/product_page.dart';
import 'package:provider_lifecycle/pages/async_keep_alive/providers.dart';

class ProductsPage extends ConsumerWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productList = ref.watch(getProductsProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('AsyncKeepAlive'),
        ),
        body: productList.when(
            data: (products) {
              return ListView.separated(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ProductPage(productId: product.id);
                        },
                      ));
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text("${product.id}"),
                      ),
                      title: Text(product.title),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
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
