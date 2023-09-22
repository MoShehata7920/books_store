import 'package:books_store/data/models/book_model/book_model.dart';
import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/widgets/book_details_app_bar.dart';
import 'package:books_store/presentation/widgets/book_details_sections.dart';
import 'package:books_store/presentation/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p32),
            child: Column(
              children: [
                const BookDetialsAppBar(),
                BookDetailsSection(
                  book: bookModel
                ),
                const Expanded(
                  child: SizedBox(
                    height: AppSize.s50,
                  ),
                ),
                const SimilarBooksSection(),
                const SizedBox(
                  height: AppSize.s40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
