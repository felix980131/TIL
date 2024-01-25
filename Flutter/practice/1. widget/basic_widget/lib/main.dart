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
          title: Text('Widget을 상하로 배치'),
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
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max, // 주축 사이즈
        mainAxisAlignment: MainAxisAlignment.center, // 주축 정렬
        crossAxisAlignment: CrossAxisAlignment.end, // 횡축 정렬
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Text("Container1"),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: Text("Container2"),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Text("Container3"),
          )
        ],
      ),
    );
  }
}
