import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_apps/common/app_theme.dart';
import 'package:quiz_apps/core/router/app_router.dart';
import 'package:quiz_apps/core/router/routes.dart';
import 'package:quiz_apps/environment_config.dart';
import 'package:quiz_apps/screens/questioner_page/bloc/questioner_page_bloc.dart';
import 'package:quiz_apps/viewmodel/comment/bloc/comment_bloc.dart';
import 'package:quiz_apps/viewmodel/post/bloc/post_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:quiz_apps/core/router/router.dart' as router;

import 'common/theme/my_theme.dart';
import 'core/network/firebase_service.dart';
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

  // This is the last thing you need to add.
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: 'AIzaSyAyAUb34zPv2yFYc9nlqRGNWzhib72OX1o',
        appId: '1:109787532943:android:a615a03e9bbf5e38246afa',
        messagingSenderId: '109787532943',
        projectId: 'quizapps-4f1a9'),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (BuildContext context, Widget? child) {
      return MultiBlocProvider(
        providers: [
          BlocProvider<PostBloc>(create: (context) => getIt<PostBloc>()),
          BlocProvider<QuestionerPageBloc>(
              create: (context) => getIt<QuestionerPageBloc>()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: MyTheme.getThemeData(isLight: false),
          navigatorKey: AppRouter.navigatorKey,
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: Routes.welcomePage,
        ),
      );
    }
    );
  }
}
