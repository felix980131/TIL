import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Body(),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExampleStateless(),
        ExampleStateful(
          index: 3,
        ),
      ],
    );
  }
}

class ExampleStateless extends StatelessWidget {
  ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  final int index;

  const ExampleStateful({super.key, required this.index});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  late int _index;

  // build 실행 전 실행되는 함수
  @override
  void initState() {
    super.initState();
    _index = widget.index;
  }

  // 위젯이 종료되면 실행되는 함수
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // 위젯을 다시 빌드
          setState(() {
            if (_index == 5) {
              _index = 0;
              return;
            }
            _index++;
          });
        },
        child: Container(
          color: Colors.blue,
          child: Center(child: Text(_index.toString())),
        ),
      ),
    );
  }
}
