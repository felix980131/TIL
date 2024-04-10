import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_example/pages/mutable_person_page.dart';
import 'package:freezed_example/pages/person_page.dart';
import 'package:freezed_example/widgets/custom_button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Freezed Data Class",
        debugShowCheckedModeBanner: false,
        home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(
        padding: const EdgeInsets.all(20),
        shrinkWrap: true,
        children: const [
          CustomButton(title: "Person", child: PersonPage()),
          CustomButton(title: "Mutable Person", child: MutablePersonPage())
        ],
      ),
    ));
  }
}
