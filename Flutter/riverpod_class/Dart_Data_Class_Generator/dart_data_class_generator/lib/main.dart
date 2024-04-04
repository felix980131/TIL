import 'package:dart_data_class_generator/pages/person_page.dart';
import 'package:dart_data_class_generator/widgets/custom_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Dart Data Class Generator",
        debugShowCheckedModeBanner: false,
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      children: const [CustomButton(title: "Person", child: PersonPage())],
    )));
  }
}
