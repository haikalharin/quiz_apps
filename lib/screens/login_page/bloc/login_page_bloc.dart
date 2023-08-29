import 'dart:async';

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

  LoginPageBloc({required this.loginRepository}) : super(const LoginPageState.loading()) {
    on<UserNameInput>(userNameInput);
    on<PasswordInput>(passwordInput);
    on<LoginSubmitted>(loginSubmitted);
  }

  Future<void> userNameInput(UserNameInput event, Emitter<LoginPageState> emit) async {
    emit(LoginPageState.loaded(
      userName: state.userName,
    ));
  }

  Future<void> passwordInput(PasswordInput event, Emitter<LoginPageState> emit) async {
    emit(LoginPageState.loaded(
      password: state.password,
    ));
  }

  Future<void> loginSubmitted(LoginSubmitted event,  Emitter<LoginPageState> emit) async {
    final userName =  state.userName;
    final password =  state.password;
    final result = await loginRepository.login(userName: userName, password: password);
    result.when(
        success: (data) {
          final state = LoginPageState.loaded(
            userName: userName,
            password: password,
          );
          emit(state);
        },
        failure: (error) {});
  }

}
