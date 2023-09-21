import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/services/utils.dart';
import 'package:books_store/presentation/widgets/featured_books_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).screenSize;

    return SizedBox(
      height: size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p5),
              child: FeaturedBooksItemListView(
                imageUrl:
                    'https://th.bing.com/th/id/R.7c7c1ece345294d2fd37d62c9c3a5d99?rik=LBePt0AXSdkr0A&pid=ImgRaw&r=0',
              ),
            );
          }),
    );
  }
}
