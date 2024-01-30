import 'package:basic_widget/screen/new_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MainApp()));
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NewPage()),
            );
          },
          child: Text("Go to Page"),
        ),
      ),
    );
  }
}
