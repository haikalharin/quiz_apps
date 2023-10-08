import 'package:quiz_apps/core/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:quiz_apps/data/firebase/firebaseDao.dart';
import 'package:quiz_apps/screens/result_page/screen/result_page.dart';
import 'package:quiz_apps/screens/welcome_page/screen/welcome_page.dart';

import '../../common/remote_utils.dart';
import '../../screens/category_page/screen/category_page.dart';
import '../../screens/questioner_page/questioner_page.dart';



class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.welcomePage:
        return MaterialPageRoute(builder: (_) => WelcomePage());
      case Routes.categoriPage:
        return MaterialPageRoute(builder: (_) => CategoryPage());
      case Routes.questionerPage:
        return MaterialPageRoute(
            builder: (_) => QuestionerPage(
              quizData: getQuestioner(settings.arguments),
            ));

      case Routes.resultPage:
        return MaterialPageRoute(
            builder: (_) => ResultsPage(
              quizData: getQuestioner(settings.arguments), userAnswers: getAnswer(settings.arguments),
            ));

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }

  static Map<String, WidgetBuilder> _getCombinedRoutes() => {};

  static Map<String, WidgetBuilder> getAll() => _getCombinedRoutes();
}
