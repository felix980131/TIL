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
        // 앱 상단 바
        appBar: AppBar(
          title: Text('This is App bar!'), // 상단바 타이틀
          centerTitle: false, // 타이틀 가운데 정렬의 적용 유무
          // 오른쪽에 위치할 위젯
          actions: [
            IconButton(
                onPressed: () {
                  print("clicked!");
                },
                icon: Icon(Icons.home)),
            Icon(Icons.play_arrow)
          ],
        ),
        // 앱의 기본적인 내용
        body: Text('Hello World!'),
        // 플로팅 버튼
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("clicked floationg action button!");
            },
            child: Icon(Icons.bug_report)),
      ),
    );
  }
}
