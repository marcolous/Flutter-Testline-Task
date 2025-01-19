import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:testline_task/models/question_model.dart';
import 'package:testline_task/ui/attempt_summary/attempt_summary.dart';
import 'package:testline_task/ui/quiz_question/quiz_question_cubit.dart';
import 'package:testline_task/ui/quiz_question/quiz_question_state.dart';
import 'package:testline_task/utils/app_style.dart';
import 'package:testline_task/utils/widgets/default_app_bar.dart';
import 'package:testline_task/utils/widgets/default_app_button.dart';

class QuizQuestionScreen extends StatefulWidget {
  const QuizQuestionScreen({super.key});
  static const route = '/quiz_question';

  @override
  State<QuizQuestionScreen> createState() => _QuizQuestionScreenState();
}

class _QuizQuestionScreenState extends State<QuizQuestionScreen> {
  late PageController _pageController;
  late QuizQuestionCubit cubit;
  @override
  void initState() {
    super.initState();
    cubit = context.read<QuizQuestionCubit>();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizQuestionCubit, QuizQuestionState<QuizModel>>(
      builder: (context, state) {
        return Scaffold(
          appBar: DefaultAppBar(
              title:
                  '${state.currentQuestionIndex + 1} / ${state.quiz.questions?.length ?? 0} Questions'),
          body: _buildBody(state),
        );
      },
    );
  }

  Widget _buildBody(QuizQuestionState<QuizModel> state) {
    if (state.isQuizLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.quiz.questions?.isEmpty ?? true) {
      return const Center(child: Text('No questions found'));
    }

    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: state.quiz.questions?.length ?? 0,
            onPageChanged: (index) {
              cubit.questionIndex(index);
            },
            itemBuilder: (context, index) {
              final question = state.quiz.questions![index];
              return SingleChildScrollView(
                padding: EdgeInsets.all(16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question.description ?? 'No Description',
                      textAlign: TextAlign.center,
                      style: AppStyle.style16Medium(),
                    ),
                    Gap(20.h),
                    if (question.options != null)
                      ...question.options!.map((option) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 8.h),
                          child: ElevatedButton(
                            onPressed: () =>
                                cubit.selectOption(index, option.description!),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(double.infinity, 50.h),
                              backgroundColor: state.selectedOptions[index] ==
                                      option.description
                                  ? Colors.white
                                  : null,
                            ),
                            child: Text(
                              option.description ?? '',
                              style: AppStyle.style14Medium(),
                            ),
                          ),
                        );
                      }),
                  ],
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NextPrevButton(
              isPrev: true,
              onPressed: () {
                _pageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
            DefaultAppButton(
              title: 'Submit',
              onPressed: () {
                cubit.scoreQuiz();
                Navigator.pushReplacementNamed(context, AttemptSummary.route);
                _pageController.jumpToPage(0);
              },
            ),
            NextPrevButton(
              isPrev: false,
              onPressed: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ],
        ),
        Gap(10.h),
      ],
    );
  }
}
