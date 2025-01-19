import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testline_task/models/question_model.dart';

part 'quiz_question_state.freezed.dart';

@freezed
class QuizQuestionState<T extends QuizModel> with _$QuizQuestionState {
  const factory QuizQuestionState({
    @Default(false) bool isQuizLoading,
    required T quiz,
    // @Default({}) Map<int, List<StrapiUserAnswer>> answers,
  }) = _QuizQuestionState;
}
