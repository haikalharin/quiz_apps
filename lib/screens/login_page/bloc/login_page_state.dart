import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_page_state.freezed.dart';

enum Status { empty, loading, failure, success }

@freezed
class LoginPageState with _$LoginPageState {
  const factory LoginPageState.empty(
      {String? userName,
      String? password,
      String? status,
      String? moveTo,
      String? error}) = _Empty;

  const factory LoginPageState.loading(
      {String? userName,
      String? password,
      String? status,
      String? moveTo,
      String? error}) = _Loading;

  const factory LoginPageState.loaded(
      {String? userName,
      String? password,
      String? status,
      String? moveTo,
      String? error}) = _Loaded;

  const factory LoginPageState.failure(String? userName, String? password,
      String? status, String? moveTo, String? error) = _Failure;
}
