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
  $Res call({bool isQuizLoading, T quiz});
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
    Object? quiz = null,
  }) {
    return _then(_value.copyWith(
      isQuizLoading: null == isQuizLoading
          ? _value.isQuizLoading
          : isQuizLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({bool isQuizLoading, T quiz});
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
    Object? quiz = null,
  }) {
    return _then(_$QuizQuestionStateImpl<T>(
      isQuizLoading: null == isQuizLoading
          ? _value.isQuizLoading
          : isQuizLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {this.isQuizLoading = false, required this.quiz});

  @override
  @JsonKey()
  final bool isQuizLoading;
  @override
  final T quiz;

  @override
  String toString() {
    return 'QuizQuestionState<$T>(isQuizLoading: $isQuizLoading, quiz: $quiz)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizQuestionStateImpl<T> &&
            (identical(other.isQuizLoading, isQuizLoading) ||
                other.isQuizLoading == isQuizLoading) &&
            const DeepCollectionEquality().equals(other.quiz, quiz));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isQuizLoading, const DeepCollectionEquality().hash(quiz));

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
      required final T quiz}) = _$QuizQuestionStateImpl<T>;

  @override
  bool get isQuizLoading;
  @override
  T get quiz;
  @override
  @JsonKey(ignore: true)
  _$$QuizQuestionStateImplCopyWith<T, _$QuizQuestionStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
