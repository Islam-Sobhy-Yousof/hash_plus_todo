import 'package:flutter/material.dart';

class MakeSpace extends StatelessWidget {
  const MakeSpace({
    super.key,
    this.height,
    this.width,
  });

  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
