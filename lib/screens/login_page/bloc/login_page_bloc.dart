import 'dart:async';
import 'dart:ffi';

import 'package:base_mvvm/main.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../core/router/routes.dart';
import 'package:equatable/equatable.dart';
import '../../../repository/login/login_repository.dart';

part 'login_page_event.dart';

part 'login_page_state.dart';

class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {
  final LoginRepository loginRepository;

  LoginPageBloc({required this.loginRepository}) : super(LoginPageState()) {
    on<LoginPageEvent>((event, emit) {
      on<UserNameInputEvent>(userNameInput);
      on<PasswordInputEvent>(passwordInput);
      on<LoginSubmittedEvent>(loginSubmitted);
      on<LoginPageInitialEvent>(loginPageInitial);
    });
  }

  Future<void> loginPageInitial(
      LoginPageInitialEvent event, Emitter<LoginPageState> emit) async {
    emit(const LoginPageState(status: LoginPageStatus.initial));
  }

  Future<void> userNameInput(
      UserNameInputEvent event, Emitter<LoginPageState> emit) async {
    emit(state.copyWith(
      username: event.userName,
    ));
  }

  Future<void> passwordInput(
      PasswordInputEvent event, Emitter<LoginPageState> emit) async {
    emit(state.copyWith(
      password: event.password,
    ));
  }

  Future<void> loginSubmitted(
      LoginSubmittedEvent event, Emitter<LoginPageState> emit) async {
    final userName = state.username;
    final password = state.password;
    emit(state.copyWith(status: LoginPageStatus.loading));
    final result =
        await loginRepository.login(userName: userName, password: password);
    result.when(success: (data) {
      final stateFix = LoginPageState(
          username: userName,
          password: password,
          moveTo: Routes.userList,
          status: LoginPageStatus.success);
      emit(stateFix);
    }, failure: (error) {
      final stateFix = LoginPageState(status: LoginPageStatus.error);
      emit(stateFix);
    });
  }
}
