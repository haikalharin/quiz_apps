

part of 'login_page_bloc.dart';

@immutable
abstract class LoginPageEvent {}

class UserNameInputEvent extends LoginPageEvent {
  final String userName;

  UserNameInputEvent(this.userName);
}

class PasswordInputEvent extends LoginPageEvent {
  final String password;

  PasswordInputEvent(this.password);
}

class LoginSubmittedEvent extends LoginPageEvent {

  LoginSubmittedEvent();
}

class LoginPageInitialEvent extends LoginPageEvent {

  LoginPageInitialEvent();
}