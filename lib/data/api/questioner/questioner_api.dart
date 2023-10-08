import 'package:quiz_apps/data/model/questioner_model/questioner_model.dart';

import '../../../core/network/api_helper.dart';
import '../../../core/network/dio_client.dart';
import '../../firebase/firebaseDao.dart';
import '../../model/login_model/login_model.dart';


class QuestionerApi with ApiHelper<LoginModel> {
  final DioClient dioClient;

  QuestionerApi({required this.dioClient});

  Future<List<QuestionerModel>> getListQuestioner(String category) async {
    return await getQuizQuestionsByCategory(category);
  }
}