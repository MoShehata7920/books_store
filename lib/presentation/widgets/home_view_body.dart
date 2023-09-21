import 'package:books_store/presentation/resources/strings_manager.dart';
import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/services/styles.dart';
import 'package:books_store/presentation/widgets/newest_books_list_view.dart';
import 'package:books_store/presentation/widgets/custom_app_bar.dart';
import 'package:books_store/presentation/widgets/featured_books_list.dart';
import 'package:flutter/cupertino.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppPadding.p25, vertical: AppPadding.p6),
            child: Text(
              AppStrings.newest,
              style: Styles.textStyle20,
            ),
          ),
          NewestBooksListView(),
        ],
      ),
    );
  }
}
