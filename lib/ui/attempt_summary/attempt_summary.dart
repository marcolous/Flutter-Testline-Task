import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:testline_task/ui/quiz_question/quiz_question_cubit.dart';
import 'package:testline_task/ui/quiz_question/quiz_question_state.dart';
import 'package:testline_task/ui/start_quiz/start_quiz_screen.dart';
import 'package:testline_task/utils/app_style.dart';
import 'package:testline_task/utils/widgets/default_app_bar.dart';
import 'package:testline_task/utils/widgets/default_app_button.dart';

class AttemptSummary extends StatelessWidget {
  const AttemptSummary({super.key});
  static const route = '/attempt_summary';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: 'Attempt Summary', showBack: false),
      body: BlocBuilder<QuizQuestionCubit, QuizQuestionState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'Points: ${state.score} / ${state.quiz.questions?.length}',
                    style: AppStyle.style30GreyMedium(),
                  ),
                ),
              ),
              DefaultAppButton(
                title: 'Finish',
                onPressed: () {
                  context.read<QuizQuestionCubit>().finishQuiz();
                  Navigator.pushReplacementNamed(
                      context, StartQuizScreen.route);
                },
              ),
              Gap(10.h),
            ],
          );
        },
      ),
    );
  }
}
