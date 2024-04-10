import 'package:flutter/material.dart';
import 'package:freezed_example/model/mutable_person.dart';

class MutablePersonPage extends StatelessWidget {
  const MutablePersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final person1 = MutablePerson(id: 1, name: 'john', email: 'john@gmail.com');
    print(person1);

    // person1.id = 2; // id가 final이므로 수정할 수 없다.

    final person2 = MutablePerson(id: 1, name: 'john', email: 'john@gmail.com');
    print(person1 == person2); // mutable 객체는 이퀄리티 오퍼레이터를 override하지 않는다.

    final person3 = person1.copyWith(id: 2, email: "new@gmail.com");
    print(person3);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mutable Person"),
      ),
    );
  }
}
