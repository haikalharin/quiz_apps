
import 'package:flutter/cupertino.dart';

@immutable
abstract class LoginPageEvent {}

class UserNameInput extends LoginPageEvent {
  final String userName;

  UserNameInput(this.userName);
}

class PasswordInput extends LoginPageEvent {
  final String password;

  PasswordInput(this.password);
}

class LoginSubmitted extends LoginPageEvent {

  LoginSubmitted();
}