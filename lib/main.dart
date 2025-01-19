import 'package:flutter/material.dart';
import 'package:testline_task/ui/start_quiz/start_quiz_screen.dart';

void main() {
  runApp(const Testline());
}

class Testline extends StatelessWidget {
  const Testline({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StartQuizScreen(),
    );
  }
}
