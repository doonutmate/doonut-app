import 'package:doonut/views/home_view.dart';
import 'package:flutter/material.dart';

abstract class RoutePath {
  static const String home = 'home';
  static const String place = 'place';
  static const String chatting = 'chatting';
  static const String myPage = 'myPage';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    late final Widget page;
    switch (settings.name) {
      case RoutePath.home:
        page = const HomeView();
        break;
      case RoutePath.place:
        break;
      case RoutePath.chatting:
        break;
      case RoutePath.myPage:
        break;
    }

    return MaterialPageRoute(
      builder: (context) => page,
    );
  }
}
