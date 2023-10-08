

part of 'questioner_page_bloc.dart';

@immutable
abstract class QuestionerPageEvent {}

class UserNameInputEvent extends QuestionerPageEvent {
  final String userName;

  UserNameInputEvent(this.userName);
}

class PasswordInputEvent extends QuestionerPageEvent {
  final String password;

  PasswordInputEvent(this.password);
}

class GetListQuestionerEvent extends QuestionerPageEvent {

  GetListQuestionerEvent();
}

class QuestionerPageInitialEvent extends QuestionerPageEvent {

  QuestionerPageInitialEvent();
}