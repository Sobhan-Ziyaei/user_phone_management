import 'package:flutter/material.dart';
import 'package:user_phone_management/ui/screens/home_screen.dart';
import 'package:user_phone_management/ui/screens/splash_screen.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.screenId:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case HomeScreen.screenId:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        return null;
    }
  }
}
