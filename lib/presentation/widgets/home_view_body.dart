import 'package:books_store/presentation/widgets/custom_app_bar.dart';
import 'package:books_store/presentation/widgets/featured_books_list.dart';
import 'package:flutter/cupertino.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), FeaturedBooksListView()],
    );
  }
}
