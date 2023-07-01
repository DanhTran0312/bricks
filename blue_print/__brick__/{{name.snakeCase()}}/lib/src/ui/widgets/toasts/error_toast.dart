// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:{{name.snakeCase()}}/src/ui/widgets/toasts/toast.dart';
import 'package:{{name.snakeCase()}}_ui/lib.dart';
import 'package:flutter/material.dart';

class ErrorToast extends StatelessWidget {
  const ErrorToast({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Toast(
      message: message,
      color: KColors.bittersweet,
      icon: Icons.error,
    );
  }
}
