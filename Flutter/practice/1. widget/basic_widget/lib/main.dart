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
          title: Text('Widget을 비율로 배치'),
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
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.red,
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            height: 100,
          ),
        ),
        Flexible(
          child: Container(
            color: Colors.yellow,
            height: 100,
          ),
        ),
        // Flexible(
        //   flex: 1,
        //   child: Container(
        //     color: Colors.red,
        //   ),
        // ),
        // Flexible(
        //   flex: 2,
        //   child: Container(
        //     color: Colors.blue,
        //   ),
        // ),
        // Flexible(
        //   flex: 3,
        //   child: Container(
        //     color: Colors.yellow,
        //   ),
        // ),
        // Flexible(
        //   flex: 4,
        //   child: Container(
        //     color: Colors.brown,
        //   ),
        // ),
      ],
    );
  }
}
