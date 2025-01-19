import 'package:flutter/material.dart';
import 'package:testline_task/ui/quiz_question/quiz_question_screen.dart';
import 'package:testline_task/utils/widgets/default_app_bar.dart';
import 'package:testline_task/utils/widgets/default_app_button.dart';

class StartQuizScreen extends StatelessWidget {
  const StartQuizScreen({super.key});
  static const route = '/start_quiz';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: 'Start Quiz', showBack: false),
      body: Center(
        child: DefaultAppButton(
          title: 'Start Quiz',
          onPressed: () {
            Navigator.pushNamed(context, QuizQuestionScreen.route);
          },
        ),
      ),
    );
  }
}
