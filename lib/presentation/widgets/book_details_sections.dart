import 'package:books_store/data/models/book_model/book_model.dart';
import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/services/styles.dart';
import 'package:books_store/presentation/services/utils.dart';
import 'package:books_store/presentation/widgets/book_action.dart';
import 'package:books_store/presentation/widgets/book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).screenSize;

    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.2,
            ),
            child: CachedNetworkImage(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
              fit: BoxFit.fill,
              errorWidget: (context, url, error) =>
                  const Icon(Icons.error_outline),
            )),
        const SizedBox(
          height: AppSize.s40,
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: AppSize.s7,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: AppSize.s18,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          bookRating: book.volumeInfo.averageRating ?? 0,
          ratingsCount: book.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: AppSize.s35,
        ),
        const BookAction(),
      ],
    );
  }
}
