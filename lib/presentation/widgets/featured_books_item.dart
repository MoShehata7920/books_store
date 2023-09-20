import 'package:books_store/presentation/resources/assets_manager.dart';
import 'package:books_store/presentation/resources/routes_manager.dart';
import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class FeaturedBooksItemListView extends StatelessWidget {
  const FeaturedBooksItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.bookDetails);
      },
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s16),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  ImagesAssets.testImage,
                ),
              )),
        ),
      ),
    );
  }
}
