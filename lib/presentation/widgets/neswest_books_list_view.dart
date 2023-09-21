import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/widgets/book_list_item.dart';
import 'package:flutter/material.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(10, (index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: AppPadding.p10),
          child: BookListViewItem(),
        );
      }),
    );
  }
}
