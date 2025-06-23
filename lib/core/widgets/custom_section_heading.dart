import 'package:flutter/material.dart';
import 'package:todo_app/core/resources/sizes_manager.dart';

class CustomSectionHeading extends StatelessWidget {
  const CustomSectionHeading({
    super.key,
    required this.text,
    this.fontSize = SizesManager.s30,
  });
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
