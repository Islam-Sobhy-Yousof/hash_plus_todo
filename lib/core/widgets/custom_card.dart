import 'package:flutter/material.dart';
import 'package:todo_app/core/resources/colors_manager.dart';
import 'package:todo_app/core/resources/sizes_manager.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    this.backgroundColor = ColorsManager.mintGreen,
    this.padding = const EdgeInsets.symmetric(
      horizontal: SizesManager.s20,
      vertical: SizesManager.s20,
    ),
    this.raduis = SizesManager.s16,
    required this.children,
  });
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final double raduis;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(raduis),
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
