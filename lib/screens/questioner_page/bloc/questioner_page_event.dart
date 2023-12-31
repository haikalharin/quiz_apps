part of 'questioner_page_bloc.dart';

@immutable
abstract class QuestionerPageEvent {}

class UserNameInputEvent extends QuestionerPageEvent {
  final String userName;

  UserNameInputEvent(this.userName);
}

class AnswerInputEvent extends QuestionerPageEvent {
  final List<String> listAnswer;

  AnswerInputEvent(this.listAnswer);
}

class GetListQuestionerEvent extends QuestionerPageEvent {
  final String category;

  GetListQuestionerEvent(this.category);
}

class QuestionerPageInitialEvent extends QuestionerPageEvent {
  QuestionerPageInitialEvent();
}
