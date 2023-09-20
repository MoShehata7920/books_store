import 'package:books_store/presentation/resources/strings_manager.dart';
import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            buttonText: '19.99€',
            buttonBackgroundColor: Colors.white,
            buttonTextColor: Colors.black,
            buttonBorderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppSize.s16),
              bottomLeft: Radius.circular(AppSize.s16),
            ),
          )),
          Expanded(
              child: CustomButton(
            buttonFontSize: AppSize.s16,
            buttonText: AppStrings.freePreview,
            buttonBackgroundColor: Color(0xffEF8262),
            buttonTextColor: Colors.white,
            buttonBorderRadius: BorderRadius.only(
              topRight: Radius.circular(AppSize.s16),
              bottomRight: Radius.circular(AppSize.s16),
            ),
          )),
        ],
      ),
    );
  }
}
