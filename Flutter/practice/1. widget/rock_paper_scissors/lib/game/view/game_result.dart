import 'package:flutter/material.dart';

class GameResult extends StatelessWidget {
  final bool isDone;

  const GameResult({super.key, required this.isDone});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Placeholder();
    }

    return Center(
      child: Text(
        "가위, 바위, 보 중 하나를 선택 해 주세요.",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
