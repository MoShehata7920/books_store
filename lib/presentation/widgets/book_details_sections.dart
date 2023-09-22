import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/services/styles.dart';
import 'package:books_store/presentation/services/utils.dart';
import 'package:books_store/presentation/widgets/book_action.dart';
import 'package:books_store/presentation/widgets/book_rating.dart';
import 'package:books_store/presentation/widgets/featured_books_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).screenSize;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.2,
          ),
          child: const FeaturedBooksItemListView(imageUrl: 'https://th.bing.com/th/id/R.7c7c1ece345294d2fd37d62c9c3a5d99?rik=LBePt0AXSdkr0A&pid=ImgRaw&r=0',),
        ),
        const SizedBox(
          height: AppSize.s40,
        ),
        Text(
          'The Jungle Book',
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
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: AppSize.s18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center, bookRating: 3, ratingsCount: 255,
        ),
        const SizedBox(
          height: AppSize.s35,
        ),
        const BookAction(),
      ],
    );
  }
}
