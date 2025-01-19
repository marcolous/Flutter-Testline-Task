import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testline_task/data/services/services.dart';
import 'package:testline_task/ui/attempt_summary/attempt_summary.dart';
import 'package:testline_task/ui/quiz_question/quiz_question_cubit.dart';
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
        return BlocProvider(
          create: (context) => QuizQuestionCubit(Services())..fetchQuiz(),
          child: MaterialApp(
            onGenerateRoute: (settings) => generateRoute(settings),
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark(),
            home: const StartQuizScreen(),
          ),
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
