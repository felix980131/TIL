import 'package:dart_data_class_generator/models/person.dart';
import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    const person1 =
        Person(id: 1, name: 'felix', email: 'dev.felix0131@gmail.com');

    final person2 = person1.copyWith(id: 2, email: "test@naver.com");

    print(person1);
    print(person2);
    print(person1 == person2);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Person"),
      ),
    );
  }
}
