import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testline_task/ui/attempt_summary/attempt_summary.dart';
import 'package:testline_task/ui/quiz_question/quiz_question_screen.dart';
import 'package:testline_task/ui/start_quiz/start_quiz_screen.dart';

void main() {
  runApp(const Testline());
}

class Testline extends StatelessWidget {
  const Testline({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          onGenerateRoute: (settings) => generateRoute(settings),
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          home: const StartQuizScreen(),
        );
      },
    );
  }
}

Route<dynamic> generateRoute(RouteSettings settings) {
  Widget Function(BuildContext) builder;
  String name = "";

  switch (settings.name) {
    case StartQuizScreen.route:
      builder = (ctx) => const StartQuizScreen();
      break;
    case QuizQuestionScreen.route:
      builder = (ctx) => const QuizQuestionScreen();
      break;
    case AttemptSummary.route:
      builder = (ctx) => const AttemptSummary();
      break;
    default:
      builder = (ctx) => const StartQuizScreen();
      name = "Home";
      break;
  }

  return MaterialPageRoute(
    builder: builder,
    settings: RouteSettings(
      name: name.replaceAll(':', '-'),
      arguments: settings.arguments,
    ),
  );
}
