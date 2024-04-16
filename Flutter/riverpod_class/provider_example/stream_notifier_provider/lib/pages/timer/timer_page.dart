import 'package:flutter/material.dart';
import 'package:stream_provider/pages/timer/action_button.dart';
import 'package:stream_provider/pages/timer/timer_value.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Timer'),
      ),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TimerValue(),
          SizedBox(height: 20),
          ActionButtons(),
        ],
      )),
    );
  }
}
