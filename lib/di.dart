import 'package:quiz_apps/core/network/dio_client.dart';
import 'package:quiz_apps/data/api/questioner/questioner_api.dart';
import 'package:quiz_apps/data/api/user/user_api.dart';
import 'package:quiz_apps/repository/questioner/questioner_repository.dart';
import 'package:quiz_apps/repository/user/user_repository.dart';
import 'package:quiz_apps/screens/questioner_page/bloc/questioner_page_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;

Future<void> init() async {
  //Dio
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<DioClient>(() => DioClient(getIt<Dio>()));

  // User api
  getIt.registerLazySingleton<UserApi>(() => UserApi(dioClient: getIt<DioClient>()));

  // Questioner api
  getIt.registerLazySingleton<QuestionerApi>(() => QuestionerApi(dioClient: getIt<DioClient>()));

  // User repository
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepository(userApi: getIt<UserApi>()),
  );

  // Questioner repository
  getIt.registerLazySingleton<QuestionerRepository>(
        () => QuestionerRepository(questionerApi: getIt<QuestionerApi>()),
  );


  //Questioner Bloc
  getIt.registerLazySingleton(() => QuestionerPageBloc( questionerRepository: getIt<QuestionerRepository>()));

}
