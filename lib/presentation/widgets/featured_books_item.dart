import 'package:books_store/presentation/resources/routes_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturedBooksItemListView extends StatelessWidget {
  const FeaturedBooksItemListView({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.bookDetails);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) =>
                  const Icon(Icons.error_outline),
            )),
      ),
    );
  }
}
