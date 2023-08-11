import 'dart:async';

import 'package:base_mvvm/repository/user/user_repository.dart';
import 'package:base_mvvm/screens/user/bloc/user_event.dart';
import 'package:base_mvvm/screens/user/bloc/user_list_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListViewModel extends Bloc<UserEvent, UserListBloc> {
  final UserRepository userRepository;

  UserListViewModel({required this.userRepository}) : super(const UserListBloc.loading()) {
    on<UsersFetched>(getUserList);
    on<UserCreated>(createUser);
  }

  Future<void> getUserList(UsersFetched event, Emitter<UserListBloc> emit) async {
    emit(UserListBloc.loading(
      data: state.data,
      status: state.status,
      gender: state.gender,
    ));
    final status = event.status ?? state.status;
    final gender = event.gender ?? state.gender;
    final result = await userRepository.getUsers(status: status, gender: gender);
    result.when(
        success: (data) {
          final state = UserListBloc.loaded(
            data: data,
            status: status,
            gender: gender,
          );
          emit(state);
        },
        failure: (error) {});
  }

  Future<void> createUser(UserCreated event, Emitter<UserListBloc> emit) async {
    emit(UserListBloc.loading(
      data: state.data,
      status: state.status,
      gender: state.gender,
    ));
    final result = await userRepository.createUser(event.user);
    result.when(
        success: (data) {
          add(UsersFetched());
        },
        failure: (error) {});
  }
}
