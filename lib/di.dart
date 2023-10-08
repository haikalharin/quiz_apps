import 'package:quiz_apps/core/network/dio_client.dart';
import 'package:quiz_apps/data/api/comment/comment_api.dart';
import 'package:quiz_apps/data/api/post/post_api.dart';
import 'package:quiz_apps/data/api/questioner/questioner_api.dart';
import 'package:quiz_apps/data/api/todo/todo_api.dart';
import 'package:quiz_apps/data/api/user/user_api.dart';
import 'package:quiz_apps/repository/comment/comment_repository.dart';
import 'package:quiz_apps/repository/login/login_repository.dart';
import 'package:quiz_apps/repository/post/post_repository.dart';
import 'package:quiz_apps/repository/questioner/questioner_repository.dart';
import 'package:quiz_apps/repository/todo/todo_repository.dart';
import 'package:quiz_apps/repository/user/user_repository.dart';
import 'package:quiz_apps/screens/questioner_page/bloc/questioner_page_bloc.dart';
import 'package:quiz_apps/viewmodel/comment/bloc/comment_bloc.dart';
import 'package:quiz_apps/viewmodel/post/bloc/post_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'data/api/login/login.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  //Dio
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<DioClient>(() => DioClient(getIt<Dio>()));

  // User api
  getIt.registerLazySingleton<UserApi>(() => UserApi(dioClient: getIt<DioClient>()));

  // _Todo api
  getIt.registerLazySingleton<ToDoApi>(() => ToDoApi(dioClient: getIt<DioClient>()));

  // Post api
  getIt.registerLazySingleton<PostApi>(() => PostApi(dioClient: getIt<DioClient>()));

  // Comment api
  getIt.registerLazySingleton<CommentApi>(() => CommentApi(dioClient: getIt<DioClient>()));

  // Login api
  getIt.registerLazySingleton<LoginApi>(() => LoginApi(dioClient: getIt<DioClient>()));

  // Questioner api
  getIt.registerLazySingleton<QuestionerApi>(() => QuestionerApi(dioClient: getIt<DioClient>()));

  // User repository
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepository(userApi: getIt<UserApi>()),
  );

// _Todo repository
  getIt.registerLazySingleton<TodoRepository>(
    () => TodoRepository(todoApi: getIt<ToDoApi>()),
  );

  // Post repository
  getIt.registerLazySingleton<PostRepository>(
    () => PostRepository(postApi: getIt<PostApi>()),
  );
  // Comment repository
  getIt.registerLazySingleton<CommentRepository>(
    () => CommentRepository(commentApi: getIt<CommentApi>()),
  );

  // Login repository
  getIt.registerLazySingleton<LoginRepository>(
        () => LoginRepository(loginApi: getIt<LoginApi>()),
  );

  // Questioner repository
  getIt.registerLazySingleton<QuestionerRepository>(
        () => QuestionerRepository(questionerApi: getIt<QuestionerApi>()),
  );


  //Post Bloc
  getIt.registerLazySingleton(() => PostBloc(postRepository: getIt<PostRepository>()));

  //Comment Bloc
  getIt.registerLazySingleton(() => CommentBloc(commentRepository: getIt<CommentRepository>()));

  //Questioner Bloc
  getIt.registerLazySingleton(() => QuestionerPageBloc( questionerRepository: getIt<QuestionerRepository>()));

}
