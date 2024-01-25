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
          title: Text('Widget을 겹겹히 쌓아 배치'),
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
    return Stack(
      children: [
        Container(
          width: 500,
          height: 500,
          color: Colors.black,
        ),
        Container(
          width: 400,
          height: 400,
          color: Colors.red,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blue,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
