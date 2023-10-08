import 'package:quiz_apps/core/network/api_result.dart';
import 'package:quiz_apps/core/repository/repository_helper.dart';
import 'package:quiz_apps/data/api/comment/comment_api.dart';
import 'package:quiz_apps/data/model/comment/comment.dart';

class CommentRepository with RepositoryHelper<Comment> {
  final CommentApi commentApi;

  CommentRepository({required this.commentApi});

  Future<ApiResult<bool>> createComment(Comment comment) async {
    return checkItemFailOrSuccess(commentApi.createComment(comment));
  }

  Future<ApiResult<bool>> deleteComment(Comment comment) async {
    return checkItemFailOrSuccess(commentApi.deleteComment(comment));
  }

  Future<ApiResult<List<Comment>>> getComments(int postId) async {
    return checkItemsFailOrSuccess(commentApi.getComments(postId));
  }
}
