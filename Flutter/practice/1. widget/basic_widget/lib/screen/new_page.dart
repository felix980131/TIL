import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Page"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text("Go to Back"),
            ),
            TextButton(
              onPressed: () {
                context.pushNamed("new1");
              },
              child: Text("Go to Page2"),
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Page2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text("Go to Back"),
            ),
            TextButton(
              onPressed: () {
                context.goNamed('home');
              },
              child: Text("Go to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
