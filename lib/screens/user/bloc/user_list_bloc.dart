import 'package:base_mvvm/data/model/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list_bloc.freezed.dart';

@freezed
class UserListBloc with _$UserListBloc {
  const factory UserListBloc.empty({List<User>? data, Gender? gender, UserStatus? status, String? error}) = _Empty;

  const factory UserListBloc.loading({List<User>? data, Gender? gender, UserStatus? status, String? error}) = _Loading;

  const factory UserListBloc.loaded({List<User>? data, Gender? gender, UserStatus? status, String? error}) = _Loaded;

  const factory UserListBloc.failure(List<User>? data, Gender? gender, UserStatus? status, String? error) = _Failure;
}
