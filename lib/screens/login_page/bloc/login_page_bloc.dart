import 'dart:async';

import 'package:base_mvvm/main.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../data/model/user/user.dart';
import '../../../repository/login/login_repository.dart';
import '../../../repository/user/user_repository.dart';
import 'login_page_event.dart';
import 'login_page_state.dart';



class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {
  final LoginRepository loginRepository;

  LoginPageBloc({required this.loginRepository}) : super(const LoginPageState.loaded()) {
    on<UserNameInput>(userNameInput);
    on<PasswordInput>(passwordInput);
    on<LoginSubmitted>(loginSubmitted);
    on<LoginPageInitial>(loginPageInitial);
  }

  Future<void> loginPageInitial(LoginPageInitial event,  Emitter<LoginPageState> emit) async {
    emit(const LoginPageState.loaded());
  }

  Future<void> userNameInput(UserNameInput event, Emitter<LoginPageState> emit) async {
    emit.call(state.copyWith(userName: event.userName));
  }

  Future<void> passwordInput(PasswordInput event, Emitter<LoginPageState> emit) async {
    emit.call(state.copyWith(password: event.password));
  }

  Future<void> loginSubmitted(LoginSubmitted event,  Emitter<LoginPageState> emit) async {
    final userName =  state.userName;
    final password =  state.password;
    emit(const LoginPageState.loading());
    final result = await loginRepository.login(userName: userName, password: password);
    result.when(
        success: (data) {
          final state = LoginPageState.loaded(
            userName: userName,
            password: password,
            status: SubmitStatus.success.toString()
          );
          emit(state);
        },
        failure: (error) {});
  }

}
