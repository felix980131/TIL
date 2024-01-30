import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/game/enum.dart';
import 'package:rock_paper_scissors/game/input_card.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;
  const CpuInput({super.key, required this.isDone, required this.cpuInput});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SizedBox.shrink()),
        Expanded(
          child: Center(
            child: InputCard(
              child: getCpuInput(),
            ),
          ),
        ),
        Expanded(child: SizedBox.shrink()),
      ],
    );
  }

  Widget getCpuInput() {
    if (isDone) {
      return Image.asset(cpuInput.path);
    }

    return SizedBox(
      width: 64,
      height: 60,
      child: Center(
        child: Text(
          "?",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
