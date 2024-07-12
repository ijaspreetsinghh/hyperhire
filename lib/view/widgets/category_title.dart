import 'package:assignment/view/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryTtileWidget extends StatelessWidget {
  const CategoryTtileWidget({
    super.key,
    required this.title,
    required this.message,
  });
  final String title;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: AppColors.demiGrey,
              fontSize: 12,
              fontWeight: FontWeight.w500),
        ),
        Text(
          message,
          style: const TextStyle(
              color: AppColors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
