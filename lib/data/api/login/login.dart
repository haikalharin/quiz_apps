import 'package:base_mvvm/data/model/login_model/login_model.dart';

import '../../../core/network/api_helper.dart';
import '../../../core/network/dio_client.dart';
import '../../../core/network/service_url.dart';

class LoginApi with ApiHelper<LoginModel> {
  final DioClient dioClient;

  LoginApi({required this.dioClient});

  Future<LoginModel> login({String? userName, String? password}) async {
    Map<String, String> data = <String, String>{};

    if (userName != null){
      data.addAll({'username': userName});
    }

    if (password != null) {
      data.addAll({'password': password});
    }

    return await makePostRequestWithData(dioClient.dio.post(ServiceUrl.login, data: data), LoginModel.fromJson);
  }
}