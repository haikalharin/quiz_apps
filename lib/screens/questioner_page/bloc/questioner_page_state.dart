part of 'questioner_page_bloc.dart';

enum QuestionerPageStatus { initial, success, error, loading, selected }

extension QuestionerPageStatusX on QuestionerPageStatus {
  bool get isInitial => this == QuestionerPageStatus.initial;

  bool get isSuccess => this == QuestionerPageStatus.success;

  bool get isError => this == QuestionerPageStatus.error;

  bool get isLoading => this == QuestionerPageStatus.loading;

  bool get isSelected => this == QuestionerPageStatus.selected;
}

class QuestionerPageState extends Equatable {
  final QuestionerPageStatus status;
  final String? username;
  final String? password;
  final String? moveTo;
  final List<QuestionerModel>? listQuestionerModel;
  final List<String>? listAnswer;

  const QuestionerPageState({
    this.listQuestionerModel,
    this.username,
    this.moveTo,
    this.password,
    this.listAnswer,
    this.status = QuestionerPageStatus.initial,
  });

  @override
  List<Object?> get props => [username, password, status,listQuestionerModel,listAnswer];

  QuestionerPageState copyWith({
    String? username,
    String? password,
    String? moveTo,
    QuestionerPageStatus? status,
    List<String>? listAnswer,
    List<QuestionerModel>? listQuestionerModel,
  }) {
    return QuestionerPageState(
      username: username ?? this.username,
      password: password ?? this.password,
      moveTo: moveTo ?? this.moveTo,
      listAnswer: listAnswer ?? this.listAnswer,
      listQuestionerModel: listQuestionerModel ?? this.listQuestionerModel,
      status: status ?? QuestionerPageStatus.initial,
    );
  }
}

class QuestionerPageInitial extends QuestionerPageState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
