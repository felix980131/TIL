import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter의 Callback"),
        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Count ${value}"),
          TestButton(addCounter, addCounter10),
        ],
      ),
    );
  }

  void addCounter() {
    setState(() {
      ++value;
    });
  }

  void addCounter10(int addValue) {
    setState(() {
      value = value + addValue;
    });
  }
}

class TestButton extends StatelessWidget {
  const TestButton(this.callback, this.callback10, {super.key});

  final VoidCallback callback; // 반환값이 없는 함수
  final Function callback10; // 반환값이 있는 함수

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback.call();
        callback10.call(10);
      },
      child: Container(
          color: Colors.yellow,
          padding: EdgeInsetsDirectional.all(50),
          margin: EdgeInsets.symmetric(vertical: 50),
          child: Text("Up Count")),
    );
  }
}
