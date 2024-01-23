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
          title: Text('Study to Container'),
        ),
        body: CustomContainer(),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // 가로 크기
      height: 300, // 세로 크기
      padding: EdgeInsets.all(10), // 패딩값
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50), // 마진값

      // 데코레이션
      decoration: BoxDecoration(
          color: Colors.red.shade100, // 색상
          // 테두리 선
          border: Border.all(
            color: Colors.black,
            width: 5,
          ),
          // 라운드
          borderRadius: BorderRadius.circular(20),
          // 그림자
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3), // 그림자 색
              offset: Offset(6, 6), // 그림자 위치
              blurRadius: 10, // 블러값
              spreadRadius: 10, // 스프레드값
            ),
            BoxShadow(
              color: Colors.red.withOpacity(0.3), // 그림자 색
              offset: Offset(-6, -6), // 그림자 위치
              blurRadius: 10, // 블러값
              spreadRadius: 10, // 스프레드값
            ),
          ]),
      child: Center(
        child: Container(
          color: Colors.yellow.shade100, // 색상
          padding: EdgeInsets.all(15), // 패딩값
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50), // 마진값
          child: Text("Hello Container"),
        ),
      ),
    );
  }
}
