import 'package:flutter/material.dart';

class GameResult extends StatefulWidget {
  final bool isDone;

  const GameResult({super.key, required this.isDone});

  @override
  State<GameResult> createState() => _GameResultState();
}

class _GameResultState extends State<GameResult> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
