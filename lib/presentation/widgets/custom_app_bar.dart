import 'package:books_store/presentation/resources/assets_manager.dart';
import 'package:books_store/presentation/resources/icons_manager.dart';
import 'package:books_store/presentation/resources/routes_manager.dart';
import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/services/animation.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p25, vertical: AppPadding.p50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            ImagesAssets.logo,
            height: AppSize.s60,
          ).animateOnPageLoad(
              msDelay: 150, dx: 0.0, dy: -200.0, showDelay: 900),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.search);
              },
              icon: const Icon(AppIcons.search))
        ],
      ),
    );
  }
}
