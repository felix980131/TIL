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
          title: Text('Widget을 상하좌우로 배치'),
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // 스크롤 방향
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start, // 주축 정렬
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
        ],
      ),
    );
  }
}
