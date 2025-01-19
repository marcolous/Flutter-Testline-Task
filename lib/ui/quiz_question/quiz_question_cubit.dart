import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testline_task/data/services/services.dart';
import 'package:testline_task/models/question_model.dart';
import 'quiz_question_state.dart';

class QuizQuestionCubit extends Cubit<QuizQuestionState<QuizModel>> {
  final Services _services;

  QuizQuestionCubit(this._services)
      : super(QuizQuestionState(
          isQuizLoading: false,
          quiz: QuizModel(),
          selectedOptions: {},
        ));

  Future<void> fetchQuiz() async {
    emit(state.copyWith(isQuizLoading: true));
    try {
      final quiz = await _services.getQuestions();

      if (quiz != null) {
        emit(state.copyWith(isQuizLoading: false, quiz: quiz));
      } else {
        throw Exception('Failed to load quiz data');
      }
    } catch (e) {
      throw Exception('Error fetching quiz data: $e');
    } finally {
      emit(state.copyWith(isQuizLoading: false));
    }
  }

  void questionIndex(int index) {
    emit(state.copyWith(currentQuestionIndex: index));
  }

  void selectOption(int questionIndex, String option) {
    final updatedSelectedOptions = Map<int, String>.from(state.selectedOptions);
    updatedSelectedOptions[questionIndex] = option;
    emit(state.copyWith(selectedOptions: updatedSelectedOptions));
  }

  void finishQuiz() {
    emit(state.copyWith(
      selectedOptions: {},
      score: 0,
      currentQuestionIndex: 0,
    ));
  }

  void scoreQuiz() {
    final selectedOptions = state.selectedOptions;
    final questions = state.quiz.questions;
    int score = 0;
    for (int i = 0; i < questions!.length; i++) {
      for (Option option in questions[i].options!) {
        if (option.isCorrect! && selectedOptions[i] == option.description) {
          score++;
        }
      }
    }
    emit(state.copyWith(score: score));
  }
}
