import 'dart:async';
import 'package:books_store/presentation/views/widgets/splash_view_body.dart';
import 'package:books_store/presentation/views/resources/routes_manager.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4),
        () => Navigator.pushReplacementNamed(context, Routes.home));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SplashViewBody());
  }
}
