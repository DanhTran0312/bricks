import 'package:{{name.snakeCase()}}/src/ui/widgets/toasts/toast.dart';
import 'package:{{name.snakeCase()}}_ui/lib.dart';
import 'package:flutter/material.dart';

class WarningToast extends StatelessWidget {
  const WarningToast({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Toast(
      message: message,
      color: KColors.koromiko,
      icon: Icons.warning,
    );
  }
}
