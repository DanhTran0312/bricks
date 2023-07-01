import 'package:{{name.snakeCase()}}_ui/lib.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:{{name.snakeCase()}}/src/core/extensions/context_extension.dart';

class ShimmerBlock extends StatelessWidget {
  const ShimmerBlock({
    super.key,
    required this.size,
    this.isCircular = false,
    this.color,
  });

  final Color? color;
  final bool isCircular;
  final Size size;

  @override
  Widget build(BuildContext context) {
    final baseColor = context.themeMode == ThemeMode.light
        ? KColors.manatee200
        : KColors.manatee;
    final highlightColor = context.themeMode == ThemeMode.light
        ? KColors.manatee100
        : KColors.manatee400;
    return Shimmer.fromColors(
      period: const Duration(milliseconds: 2000),
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          shape: isCircular ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: isCircular ? null : BorderRadius.circular(8),
          color: color ?? baseColor,
        ),
        height: size.height,
        width: size.width,
      ),
    );
  }
}
