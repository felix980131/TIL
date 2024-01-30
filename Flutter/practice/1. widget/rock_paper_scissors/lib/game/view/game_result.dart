import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/game/enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  final VoidCallback callback;

  const GameResult(
      {super.key, required this.isDone, this.result, required this.callback});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              result!.displayString,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          TextButton(
            onPressed: () => callback.call(),
            child: Text(
              "다시하기",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          )
        ],
      );
    }

    return Center(
      child: Text(
        "가위, 바위, 보 중 하나를 선택 해 주세요.",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
