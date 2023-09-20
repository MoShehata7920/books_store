import 'package:books_store/presentation/resources/icons_manager.dart';
import 'package:flutter/material.dart';

class BookDetialsAppBar extends StatelessWidget {
  const BookDetialsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(AppIcons.close),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            AppIcons.cart,
          ),
        )
      ],
    );
  }
}
