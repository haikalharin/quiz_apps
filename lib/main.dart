import 'dart:async';

import 'package:base_mvvm/common/app_theme.dart';
import 'package:base_mvvm/core/router/app_router.dart';
import 'package:base_mvvm/core/router/routes.dart';
import 'package:base_mvvm/environment_config.dart';
import 'package:base_mvvm/screens/login_page/bloc/login_page_bloc.dart';
import 'package:base_mvvm/screens/todo/bloc/todo_bloc.dart';
import 'package:base_mvvm/screens/user/bloc/user_bloc.dart';
import 'package:base_mvvm/viewmodel/comment/bloc/comment_bloc.dart';
import 'package:base_mvvm/viewmodel/post/bloc/post_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:base_mvvm/core/router/router.dart' as router;

import 'di.dart';
enum SubmitStatus { empty, loading, failure, success }
void main() async {
  // runZonedGuarded<Future<void>>(() async {
  //
  //
  //   if (kDebugMode) {
  //     print(EnvironmentConfig.envName);
  //   }
  //
  // }, (error, stack) async {
  //   // await Sentry.captureException(error, stackTrace: stack);
  //   // await FirebaseCrashlytics.instance.recordError(error, stack);
  // });
  await init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TodoBloc>(create: (context) => getIt<TodoBloc>()),
        BlocProvider<PostBloc>(create: (context) => getIt<PostBloc>()),
        BlocProvider<CommentBloc>(create: (context) => getIt<CommentBloc>()),
        BlocProvider<UserBloc>(create: (context) => getIt<UserBloc>()),
        BlocProvider<LoginPageBloc>(create: (context) => getIt<LoginPageBloc>()),
      ],
      child: MaterialApp(
        // debugShowCheckedModeBanner: false,
        theme: AppTheme.lightAppTheme,
        navigatorKey: AppRouter.navigatorKey,
        routes: AppRouter.generateRoute(),
        initialRoute: Routes.loginPage,
      ),
    );
  }
}
