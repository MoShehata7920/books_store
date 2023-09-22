import 'package:books_store/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/widgets/book_list_item.dart';
import 'package:books_store/presentation/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return Column(
            children: List.generate(state.books.length, (index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: AppPadding.p10),
                child: BookListViewItem(bookModel: state.books[index],),
              );
            }),
          );
        } else if (state is NewestBooksFailure) {
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
