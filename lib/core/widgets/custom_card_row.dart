import 'package:flutter/material.dart';
import 'package:todo_app/core/resources/sizes_manager.dart';

class CustomCardRow extends StatelessWidget {
  const CustomCardRow({
    super.key,
    this.titleFontSize = SizesManager.s25,
    this.subTitleFontSize = SizesManager.s25,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;
  final double titleFontSize;
  final double subTitleFontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: titleFontSize,
          ),
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: subTitleFontSize,
          ),
        ),
      ],
    );
  }
}
