import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/game/view/game_body.dart';

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
            title: Text("가위 바위 보"),
          ),
          body: GameBody()),
    );
  }
}
