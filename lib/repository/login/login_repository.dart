import 'package:base_mvvm/data/api/login/login.dart';
import 'package:base_mvvm/data/model/login_model/login_model.dart';

import '../../core/network/api_result.dart';
import '../../core/repository/repository_helper.dart';

class LoginRepository with RepositoryHelper<LoginModel> {
  final LoginApi loginApi;

  const LoginRepository({required this.loginApi});

  Future<ApiResult<LoginModel>> login({String? userName, String? password}) async {
    return checkItemWithDataFailOrSuccess(loginApi.login(userName: userName, password: password));
  }
}