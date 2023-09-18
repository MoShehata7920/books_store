import 'package:books_store/presentation/views/resources/assets_manager.dart';
import 'package:books_store/presentation/views/resources/color_manager.dart';
import 'package:books_store/presentation/views/resources/strings_manager.dart';
import 'package:books_store/presentation/views/services/animation.dart';
import 'package:books_store/presentation/views/services/utils.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).screenSize;

    return SingleChildScrollView(
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
                  style: TextStyle(color: ColorsManager.primaryColor),
                ).animateOnPageLoad(
                    msDelay: 300, dx: 0.0, dy: 70.0, showDelay: 300),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  AppStrings.mohamedShehata,
                  style: TextStyle(
                    color: ColorsManager.primaryText,
                  ),
                ).animateOnPageLoad(
                    msDelay: 300, dx: 0.0, dy: 70.0, showDelay: 300),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
