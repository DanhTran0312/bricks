import 'package:flutter/material.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  const AppCircularProgressIndicator({
    required this.size,
    super.key,
    this.strokeWidth = 2,
  });

  final Size size;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
      ),
    );
  }
}
