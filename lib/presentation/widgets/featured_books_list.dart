import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/services/utils.dart';
import 'package:books_store/presentation/widgets/featured_books_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).screenSize;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
      child: SizedBox(
        height: size.height * 0.3,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p2),
                child: FeaturedBooksItemListView(),
              );
            }),
      ),
    );
  }
}
