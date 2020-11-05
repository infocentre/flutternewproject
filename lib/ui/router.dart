import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/main.dart';
import 'package:temp/ui/views/login_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyHomePage(title: 'hi'));
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
