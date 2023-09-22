import 'package:books_store/presentation/resources/strings_manager.dart';
import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/services/styles.dart';
import 'package:books_store/presentation/widgets/custom_search_text_field.dart';
import 'package:flutter/cupertino.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchTextField(),
        SizedBox(
          height: AppSize.s16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p25,
          ),
          child: Text(
            AppStrings.searchResult,
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(
          height: AppSize.s16,
        ),
        Expanded(
          child: SearchResultListView(),
        ),
      ],
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: AppPadding.p10),
          // child: BookListViewItem(bookModel: null,),
          child: Text(''),
        );
      },
    );
  }
}
