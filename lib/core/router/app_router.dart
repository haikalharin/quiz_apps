import 'package:base_mvvm/core/router/routes.dart';
import 'package:base_mvvm/screens/login_page/screen/login_screen.dart';
import 'package:base_mvvm/screens/user/user_list_screen.dart';
import 'package:flutter/material.dart';

import '../../screens/navbar_page/bottom_nav.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Map<String, Widget Function(BuildContext context)> generateRoute() {
    return {
      Routes.userList: (context) => const UserListScreen(),
      Routes.loginPage: (context) => const LoginScreen(),
      Routes.navbarPage: (context) =>  NavbarPage(),
    };
  }
}
