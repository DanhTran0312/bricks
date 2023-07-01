import 'package:{{name.snakeCase()}}/src/ui/widgets/toasts/toast.dart';
import 'package:{{name.snakeCase()}}_ui/lib.dart';
import 'package:flutter/material.dart';

class InfoToast extends StatelessWidget {
  const InfoToast({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Toast(
      message: message,
      color: KColors.lavender,
      icon: Icons.info,
    );
  }
}
