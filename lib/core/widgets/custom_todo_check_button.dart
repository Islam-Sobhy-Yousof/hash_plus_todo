import 'package:flutter/material.dart';
import 'package:todo_app/core/resources/colors_manager.dart';
import 'package:todo_app/core/resources/sizes_manager.dart';

class CustomTodoCheckButton extends StatelessWidget {
  const CustomTodoCheckButton({
    super.key,
    this.outerRaduis = SizesManager.s25,
    this.innerRaduis = SizesManager.s12,
    this.stroke = SizesManager.s2,
    this.outerBackground = ColorsManager.snowWhite,
    this.innerBackground = ColorsManager.royalBlue,
    this.child,
  });
  final double outerRaduis;
  final double innerRaduis;
  final double stroke;
  final Color outerBackground;
  final Color innerBackground;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: outerRaduis,
      backgroundColor: outerBackground,
      child: CircleAvatar(
        radius: innerRaduis,
        backgroundColor: ColorsManager.royalBlue,
        child: CircleAvatar(
          radius: innerRaduis - stroke,
          backgroundColor: ColorsManager.iceBlue,
          child: child,
        ),
      ),
    );
  }
}
