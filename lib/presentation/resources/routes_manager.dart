import 'package:books_store/presentation/resources/strings_manager.dart';
import 'package:books_store/presentation/screens/book_details/view/book_detials_view.dart';
import 'package:books_store/presentation/screens/home/view/home.dart';
import 'package:books_store/presentation/screens/search/view/search_screen_view.dart';
import 'package:books_store/presentation/screens/splash/splash.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splash = "/";
  static const String home = "/home";
  static const String bookDetails = "/bookDetails";
  static const String search = "/search";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      case Routes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreenView());

      case Routes.bookDetails:
        return MaterialPageRoute(builder: (context) => const BookDetailsView());

      case Routes.search:
        return MaterialPageRoute(builder: (context) => const SearchView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (context) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteTitle),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
