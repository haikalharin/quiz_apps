import 'package:base_mvvm/core/router/routes.dart';
import 'package:base_mvvm/screens/user/user_list_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Map<String, Widget Function(BuildContext context)> generateRoute() {
    return {
      Routes.userList: (context) => UserListScreen.create(),
    };
  }
}
