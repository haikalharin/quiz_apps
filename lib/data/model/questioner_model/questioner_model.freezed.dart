// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questioner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionerModel _$QuestionerModelFromJson(Map<String, dynamic> json) {
  return _QuestionerModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionerModel {
  @JsonKey(name: "question")
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: "imagePath")
  String get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: "answers")
  List<String> get answers => throw _privateConstructorUsedError;
  @JsonKey(name: "correctAnswer")
  String get correctAnswer => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionerModelCopyWith<QuestionerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionerModelCopyWith<$Res> {
  factory $QuestionerModelCopyWith(
          QuestionerModel value, $Res Function(QuestionerModel) then) =
      _$QuestionerModelCopyWithImpl<$Res, QuestionerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "question") String question,
      @JsonKey(name: "imagePath") String imagePath,
      @JsonKey(name: "answers") List<String> answers,
      @JsonKey(name: "correctAnswer") String correctAnswer,
      @JsonKey(name: "category") String category});
}

/// @nodoc
class _$QuestionerModelCopyWithImpl<$Res, $Val extends QuestionerModel>
    implements $QuestionerModelCopyWith<$Res> {
  _$QuestionerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? imagePath = null,
    Object? answers = null,
    Object? correctAnswer = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionerModelCopyWith<$Res>
    implements $QuestionerModelCopyWith<$Res> {
  factory _$$_QuestionerModelCopyWith(
          _$_QuestionerModel value, $Res Function(_$_QuestionerModel) then) =
      __$$_QuestionerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "question") String question,
      @JsonKey(name: "imagePath") String imagePath,
      @JsonKey(name: "answers") List<String> answers,
      @JsonKey(name: "correctAnswer") String correctAnswer,
      @JsonKey(name: "category") String category});
}

/// @nodoc
class __$$_QuestionerModelCopyWithImpl<$Res>
    extends _$QuestionerModelCopyWithImpl<$Res, _$_QuestionerModel>
    implements _$$_QuestionerModelCopyWith<$Res> {
  __$$_QuestionerModelCopyWithImpl(
      _$_QuestionerModel _value, $Res Function(_$_QuestionerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? imagePath = null,
    Object? answers = null,
    Object? correctAnswer = null,
    Object? category = null,
  }) {
    return _then(_$_QuestionerModel(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionerModel implements _QuestionerModel {
  const _$_QuestionerModel(
      {@JsonKey(name: "question") required this.question,
      @JsonKey(name: "imagePath") required this.imagePath,
      @JsonKey(name: "answers") required final List<String> answers,
      @JsonKey(name: "correctAnswer") required this.correctAnswer,
      @JsonKey(name: "category") required this.category})
      : _answers = answers;

  factory _$_QuestionerModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionerModelFromJson(json);

  @override
  @JsonKey(name: "question")
  final String question;
  @override
  @JsonKey(name: "imagePath")
  final String imagePath;
  final List<String> _answers;
  @override
  @JsonKey(name: "answers")
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  @JsonKey(name: "correctAnswer")
  final String correctAnswer;
  @override
  @JsonKey(name: "category")
  final String category;

  @override
  String toString() {
    return 'QuestionerModel(question: $question, imagePath: $imagePath, answers: $answers, correctAnswer: $correctAnswer, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionerModel &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, imagePath,
      const DeepCollectionEquality().hash(_answers), correctAnswer, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionerModelCopyWith<_$_QuestionerModel> get copyWith =>
      __$$_QuestionerModelCopyWithImpl<_$_QuestionerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionerModelToJson(
      this,
    );
  }
}

abstract class _QuestionerModel implements QuestionerModel {
  const factory _QuestionerModel(
          {@JsonKey(name: "question") required final String question,
          @JsonKey(name: "imagePath") required final String imagePath,
          @JsonKey(name: "answers") required final List<String> answers,
          @JsonKey(name: "correctAnswer") required final String correctAnswer,
          @JsonKey(name: "category") required final String category}) =
      _$_QuestionerModel;

  factory _QuestionerModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionerModel.fromJson;

  @override
  @JsonKey(name: "question")
  String get question;
  @override
  @JsonKey(name: "imagePath")
  String get imagePath;
  @override
  @JsonKey(name: "answers")
  List<String> get answers;
  @override
  @JsonKey(name: "correctAnswer")
  String get correctAnswer;
  @override
  @JsonKey(name: "category")
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionerModelCopyWith<_$_QuestionerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
