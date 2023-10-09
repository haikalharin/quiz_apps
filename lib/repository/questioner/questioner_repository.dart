import 'package:quiz_apps/data/api/questioner/questioner_api.dart';
import 'package:quiz_apps/data/model/questioner_model/questioner_model.dart';

import '../../core/network/api_result.dart';
import '../../core/repository/repository_helper.dart';

class QuestionerRepository with RepositoryHelper<QuestionerModel> {
  final QuestionerApi questionerApi;

  const QuestionerRepository({required this.questionerApi});

  Future<ApiResult<List<QuestionerModel>>> getListQuestioner(String category) async {
    return checkItemsFailOrSuccess(questionerApi.getListQuestioner(category));
  }
}