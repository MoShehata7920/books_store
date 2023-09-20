import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(10, (index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: AppPadding.p10),
          child: BestSellerItem(),
        );
      }),
    );
  }
}
