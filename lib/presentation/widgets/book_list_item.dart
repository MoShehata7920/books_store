import 'package:books_store/data/models/book_model/book_model.dart';
import 'package:books_store/presentation/resources/color_manager.dart';
import 'package:books_store/presentation/resources/constants.dart';
import 'package:books_store/presentation/resources/routes_manager.dart';
import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/services/styles.dart';
import 'package:books_store/presentation/services/utils.dart';
import 'package:books_store/presentation/widgets/book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).screenSize;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.bookDetails);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p25,
          vertical: AppPadding.p6,
        ),
        child: SizedBox(
          height: AppSize.s140,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.7 / 4,
                child: CachedNetworkImage(
                  imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.error_outline),
                ),
              ),
              const SizedBox(
                width: AppSize.s15,
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      width: size.width * 0.5,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        style: Styles.textStyle20
                            .copyWith(fontFamily: gtSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.s8,
                    ),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle14
                          .copyWith(color: ColorsManager.secondaryText),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: AppSize.s8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Free",
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        BookRating(
                          bookRating:
                              bookModel.volumeInfo.averageRating?.round() ?? 0,
                          ratingsCount: bookModel.volumeInfo.ratingsCount ?? 0,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
