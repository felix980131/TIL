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
          body: ConstrainsWidget(),
        ),
      ),
    );
  }
}

class ConstrainsWidget extends StatelessWidget {
  const ConstrainsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      color: Colors.blue,
      child: UnconstrainedBox(
        child: Container(
          width: 300,
          height: 700,
          color: Colors.red,
        ),
      ),
      // child: Center(
      //   child: Container(
      //     // 제약사항
      //     constraints: BoxConstraints(
      //         minHeight: 200, minWidth: 200, maxHeight: 250, maxWidth: 250),
      //     width: 300,
      //     height: 300,
      //     color: Colors.red,
      //   ),
      // ),
    );
  }
}
