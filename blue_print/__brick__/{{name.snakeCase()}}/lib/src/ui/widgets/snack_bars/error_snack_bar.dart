// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:{{name.snakeCase()}}_app_ui/lib.dart';
import 'package:flutter/material.dart';

class ErrorSnackBar extends SnackBar {
  ErrorSnackBar({
    required String message,
    super.key,
  }) : super(
          content: Row(
            children: [
              const Icon(
                Icons.error,
                color: KColor.white,
              ),
              Gap.m.width,
              Expanded(
                child: Text(
                  message,
                ),
              ),
            ],
          ),
          clipBehavior: Clip.antiAlias,
          behavior: SnackBarBehavior.floating,
          backgroundColor: KColor.red,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        );
}