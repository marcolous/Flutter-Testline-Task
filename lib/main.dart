import 'package:flutter/material.dart';

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

class StartQuizScreen extends StatelessWidget {
  const StartQuizScreen({super.key});
  static const route = '/start_quiz';

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class QuizQuestionScreen extends StatelessWidget {
  const QuizQuestionScreen({super.key});
  static const route = '/quiz_question';

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class AttemptSummary extends StatelessWidget {
  const AttemptSummary({super.key});
  static const route = '/attempt_summary';

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
