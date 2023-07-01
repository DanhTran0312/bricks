import 'package:{{name.snakeCase()}}_ui/lib.dart';
import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/extensions/text_styles_extension.dart';

class Toast extends StatelessWidget {
  const Toast({
    super.key,
    required this.message,
    required this.color,
    required this.icon,
  });

  final Color color;
  final IconData icon;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 450,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: KColors.coconut,
          ),
          KSize.m.horizontal,
          Flexible(
            child: Text(
              message,
              style: context.titleSmall.cCoconut,
            ),
          ),
        ],
      ),
    );
  }
}
