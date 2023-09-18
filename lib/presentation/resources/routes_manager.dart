import 'package:books_store/presentation/resources/strings_manager.dart';
import 'package:books_store/presentation/screens/home/view/home.dart';
import 'package:books_store/presentation/screens/splash/splash.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splash = "/";
  static const String home = "/home";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      case Routes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreenView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (context) => Scaffold(
              appBar: AppBar(
                title: Text(AppStrings.noRouteTitle),
              ),
              body: Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
