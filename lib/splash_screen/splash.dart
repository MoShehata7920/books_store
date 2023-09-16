import 'dart:async';
import 'package:books_store/resources/assets_manager.dart';
import 'package:books_store/resources/routes_manager.dart';
import 'package:books_store/resources/strings_manager.dart';
import 'package:books_store/services/animation.dart';
import 'package:books_store/services/utils.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
    Size size = Utils(context).screenSize;

    return Scaffold(
        backgroundColor: const Color(0xFF00001a),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Lottie.asset(JsonAssets.splashLogo).animateOnPageLoad(
                    msDelay: 150, dx: 0.0, dy: -200.0, showDelay: 900),
                Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.35,
                    ),
                    Text(
                      AppStrings.developedBy,
                      style: const TextStyle(color: Colors.cyan),
                    ).animateOnPageLoad(
                        msDelay: 300, dx: 0.0, dy: 70.0, showDelay: 300),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      AppStrings.mohamedShehata,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ).animateOnPageLoad(
                        msDelay: 300, dx: 0.0, dy: 70.0, showDelay: 300),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
