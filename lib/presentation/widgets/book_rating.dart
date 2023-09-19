import 'package:books_store/presentation/resources/color_manager.dart';
import 'package:books_store/presentation/resources/icons_manager.dart';
import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/services/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          AppIcons.star,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: AppSize.s7,
        ),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: AppSize.s5,
        ),
        Text(
          "(245)",
          style:
              Styles.textStyle14.copyWith(color: ColorsManager.secondaryText),
        )
      ],
    );
  }
}
