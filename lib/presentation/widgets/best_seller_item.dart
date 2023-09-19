import 'package:books_store/presentation/resources/assets_manager.dart';
import 'package:books_store/presentation/resources/color_manager.dart';
import 'package:books_store/presentation/resources/constants.dart';
import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/services/styles.dart';
import 'package:books_store/presentation/services/utils.dart';
import 'package:books_store/presentation/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).screenSize;

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p25, vertical: AppPadding.p6),
      child: SizedBox(
        height: AppSize.s140,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSize.s16),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        ImagesAssets.testImage,
                      ),
                    )),
              ),
            ),
            const SizedBox(
              width: AppSize.s15,
            ),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    width: size.width * 0.5,
                    child: Text(
                      "The Jungle Book",
                      style:
                          Styles.textStyle20.copyWith(fontFamily: gtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s8,
                  ),
                  Text(
                    "Rudyard Kipling",
                    style: Styles.textStyle14
                        .copyWith(color: ColorsManager.secondaryText),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: AppSize.s8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "19.99 \$",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const BookRating(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
