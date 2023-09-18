import 'package:books_store/presentation/resources/color_manager.dart';
import 'package:books_store/presentation/screens/splash/splash.dart';
import 'package:flutter/material.dart';
import 'presentation/resources/routes_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: ColorsManager.primaryBackgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splash,
      home: const SplashScreen(),
    );
  }
}
