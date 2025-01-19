// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_question_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizQuestionState<T extends QuizModel> {
  bool get isQuizLoading => throw _privateConstructorUsedError;
  int get currentQuestionIndex => throw _privateConstructorUsedError;
  Map<int, String> get selectedOptions => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  T get quiz => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizQuestionStateCopyWith<T, QuizQuestionState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizQuestionStateCopyWith<T extends QuizModel, $Res> {
  factory $QuizQuestionStateCopyWith(QuizQuestionState<T> value,
          $Res Function(QuizQuestionState<T>) then) =
      _$QuizQuestionStateCopyWithImpl<T, $Res, QuizQuestionState<T>>;
  @useResult
  $Res call(
      {bool isQuizLoading,
      int currentQuestionIndex,
      Map<int, String> selectedOptions,
      int score,
      T quiz});
}

/// @nodoc
class _$QuizQuestionStateCopyWithImpl<T extends QuizModel, $Res,
        $Val extends QuizQuestionState<T>>
    implements $QuizQuestionStateCopyWith<T, $Res> {
  _$QuizQuestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isQuizLoading = null,
    Object? currentQuestionIndex = null,
    Object? selectedOptions = null,
    Object? score = null,
    Object? quiz = null,
  }) {
    return _then(_value.copyWith(
      isQuizLoading: null == isQuizLoading
          ? _value.isQuizLoading
          : isQuizLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentQuestionIndex: null == currentQuestionIndex
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedOptions: null == selectedOptions
          ? _value.selectedOptions
          : selectedOptions // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      quiz: null == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizQuestionStateImplCopyWith<T extends QuizModel, $Res>
    implements $QuizQuestionStateCopyWith<T, $Res> {
  factory _$$QuizQuestionStateImplCopyWith(_$QuizQuestionStateImpl<T> value,
          $Res Function(_$QuizQuestionStateImpl<T>) then) =
      __$$QuizQuestionStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {bool isQuizLoading,
      int currentQuestionIndex,
      Map<int, String> selectedOptions,
      int score,
      T quiz});
}

/// @nodoc
class __$$QuizQuestionStateImplCopyWithImpl<T extends QuizModel, $Res>
    extends _$QuizQuestionStateCopyWithImpl<T, $Res, _$QuizQuestionStateImpl<T>>
    implements _$$QuizQuestionStateImplCopyWith<T, $Res> {
  __$$QuizQuestionStateImplCopyWithImpl(_$QuizQuestionStateImpl<T> _value,
      $Res Function(_$QuizQuestionStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isQuizLoading = null,
    Object? currentQuestionIndex = null,
    Object? selectedOptions = null,
    Object? score = null,
    Object? quiz = null,
  }) {
    return _then(_$QuizQuestionStateImpl<T>(
      isQuizLoading: null == isQuizLoading
          ? _value.isQuizLoading
          : isQuizLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentQuestionIndex: null == currentQuestionIndex
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedOptions: null == selectedOptions
          ? _value._selectedOptions
          : selectedOptions // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      quiz: null == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$QuizQuestionStateImpl<T extends QuizModel>
    implements _QuizQuestionState<T> {
  const _$QuizQuestionStateImpl(
      {this.isQuizLoading = false,
      this.currentQuestionIndex = 0,
      final Map<int, String> selectedOptions = const {},
      this.score = 0,
      required this.quiz})
      : _selectedOptions = selectedOptions;

  @override
  @JsonKey()
  final bool isQuizLoading;
  @override
  @JsonKey()
  final int currentQuestionIndex;
  final Map<int, String> _selectedOptions;
  @override
  @JsonKey()
  Map<int, String> get selectedOptions {
    if (_selectedOptions is EqualUnmodifiableMapView) return _selectedOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedOptions);
  }

  @override
  @JsonKey()
  final int score;
  @override
  final T quiz;

  @override
  String toString() {
    return 'QuizQuestionState<$T>(isQuizLoading: $isQuizLoading, currentQuestionIndex: $currentQuestionIndex, selectedOptions: $selectedOptions, score: $score, quiz: $quiz)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizQuestionStateImpl<T> &&
            (identical(other.isQuizLoading, isQuizLoading) ||
                other.isQuizLoading == isQuizLoading) &&
            (identical(other.currentQuestionIndex, currentQuestionIndex) ||
                other.currentQuestionIndex == currentQuestionIndex) &&
            const DeepCollectionEquality()
                .equals(other._selectedOptions, _selectedOptions) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other.quiz, quiz));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isQuizLoading,
      currentQuestionIndex,
      const DeepCollectionEquality().hash(_selectedOptions),
      score,
      const DeepCollectionEquality().hash(quiz));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizQuestionStateImplCopyWith<T, _$QuizQuestionStateImpl<T>>
      get copyWith =>
          __$$QuizQuestionStateImplCopyWithImpl<T, _$QuizQuestionStateImpl<T>>(
              this, _$identity);
}

abstract class _QuizQuestionState<T extends QuizModel>
    implements QuizQuestionState<T> {
  const factory _QuizQuestionState(
      {final bool isQuizLoading,
      final int currentQuestionIndex,
      final Map<int, String> selectedOptions,
      final int score,
      required final T quiz}) = _$QuizQuestionStateImpl<T>;

  @override
  bool get isQuizLoading;
  @override
  int get currentQuestionIndex;
  @override
  Map<int, String> get selectedOptions;
  @override
  int get score;
  @override
  T get quiz;
  @override
  @JsonKey(ignore: true)
  _$$QuizQuestionStateImplCopyWith<T, _$QuizQuestionStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
