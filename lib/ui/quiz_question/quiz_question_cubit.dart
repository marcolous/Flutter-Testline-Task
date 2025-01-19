import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testline_task/data/services/services.dart';
import 'package:testline_task/models/question_model.dart';
import 'quiz_question_state.dart';

class QuizQuestionCubit extends Cubit<QuizQuestionState<QuizModel>> {
  final Services _services;

  QuizQuestionCubit(this._services)
      : super(QuizQuestionState(isQuizLoading: false, quiz: QuizModel()));

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
}
