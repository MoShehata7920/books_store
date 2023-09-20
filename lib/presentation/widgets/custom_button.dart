import 'package:books_store/presentation/resources/values_manager.dart';
import 'package:books_store/presentation/services/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonText,
      required this.buttonBackgroundColor,
      required this.buttonTextColor,
      this.buttonBorderRadius,
      this.buttonFontSize});

  final String buttonText;
  final Color buttonBackgroundColor;
  final Color buttonTextColor;
  final BorderRadius? buttonBorderRadius;
  final double? buttonFontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: buttonBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: buttonBorderRadius ??
                BorderRadius.circular(
                  AppSize.s12,
                ),
          ),
        ),
        child: Text(
          buttonText,
          style: Styles.textStyle18.copyWith(
            color: buttonTextColor,
            fontWeight: FontWeight.w900,
            fontSize: buttonFontSize,
          ),
        ),
      ),
    );
  }
}
