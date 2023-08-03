import 'dart:async';

import 'package:base_mvvm/core/app_theme.dart';
import 'package:base_mvvm/environment_config.dart';
import 'package:base_mvvm/viewmodel/comment/bloc/comment_bloc.dart';
import 'package:base_mvvm/viewmodel/post/bloc/post_bloc.dart';
import 'package:base_mvvm/viewmodel/todo/bloc/todo_bloc.dart';
import 'package:base_mvvm/viewmodel/user/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'di.dart';
import 'view/user/screen/user_list_screen.dart';

void main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await init();
    print(EnvironmentConfig.envName);
    runApp(const MyApp());
  }, (error, stack) async {
    // await Sentry.captureException(error, stackTrace: stack);
    // await FirebaseCrashlytics.instance.recordError(error, stack);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(create: (context) => getIt<UserBloc>()),
        BlocProvider<TodoBloc>(create: (context) => getIt<TodoBloc>()),
        BlocProvider<PostBloc>(create: (context) => getIt<PostBloc>()),
        BlocProvider<CommentBloc>(create: (context) => getIt<CommentBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightAppTheme,
        home: const UserListScreen(),
      ),
    );
  }
}
