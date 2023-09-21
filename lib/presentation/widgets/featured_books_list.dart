import 'package:books_store/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/services/utils.dart';
import 'package:books_store/presentation/widgets/custom_error_widget.dart';
import 'package:books_store/presentation/widgets/featured_books_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).screenSize;

    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
            child: SizedBox(
              height: size.height * 0.3,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: AppPadding.p5),
                      child: FeaturedBooksItemListView(
                        imageUrl: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            '',
                      ),
                    );
                  }),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
