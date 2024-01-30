import 'package:basic_widget/screen/new_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MaterialApp.router(
    routerConfig: GoRouter(initialLocation: "/", routes: [
      GoRoute(path: "/", name: "home", builder: (context, _) => MainApp()),
      GoRoute(path: "/new", name: "new", builder: (context, _) => NewPage()),
      GoRoute(path: "/new1", name: "new1", builder: (context, _) => NewPage2()),
    ]),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter에서 화면 이동하기"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.pushNamed("new");
          },
          child: Text("Go to Page"),
        ),
      ),
    );
  }
}
