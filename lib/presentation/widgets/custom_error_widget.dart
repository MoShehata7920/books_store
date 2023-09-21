import 'package:books_store/presentation/services/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        errorMessage,
        style: Styles.textStyle18,
      ),
    );
  }
}
