
import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/auth/pages/sign%20up.dart';
import '../screens/auth/pages/login.dart';
import '../screens/mainscreen/main_page.dart';
import '../screens/splash/splash.dart';
import 'app_routes.dart';

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
    // final args = settings.arguments as Map<String, dynamic>;
      case RouteName.splash:
        return MaterialPageRoute(builder: (_) => const Splash());
      case RouteName.bottomNav:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case RouteName.signup:
        return MaterialPageRoute(builder: (_) => const SignUp());
      case RouteName.login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}