import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/widgets/book_details_app_bar.dart';
import 'package:books_store/presentation/widgets/book_details_sections.dart';
import 'package:books_store/presentation/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p32),
            child: Column(
              children: [
                BookDetialsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: AppSize.s50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
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
