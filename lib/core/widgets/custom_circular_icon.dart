import 'package:flutter/material.dart';
import 'package:todo_app/core/resources/colors_manager.dart';
import 'package:todo_app/core/resources/sizes_manager.dart';

class CustomCircularIcon extends StatelessWidget {
  const CustomCircularIcon({
    super.key,
    this.backgroundColor = ColorsManager.snowWhite,
    this.subCircleBackground = ColorsManager.snowWhite,
    this.iconColor = ColorsManager.stoneGrey,
    this.radius = SizesManager.s16,
    this.radiusStroke = 2,
    required this.icon,
  });
  final Color backgroundColor;
  final Color subCircleBackground;
  final Color iconColor;
  final IconData icon;
  final double radius;
  final int radiusStroke;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: CircleAvatar(
        backgroundColor: subCircleBackground,
        radius: radius - radiusStroke,
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
