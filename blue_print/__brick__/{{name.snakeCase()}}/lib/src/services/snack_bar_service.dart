import 'package:{{name.snakeCase()}}/src/router/app_router.dart';
import 'package:{{name.snakeCase()}}/src/ui/widgets/snack_bars/error_snack_bar.dart';
import 'package:{{name.snakeCase()}}/src/ui/widgets/snack_bars/success_snack_bar.dart';
import 'package:{{name.snakeCase()}}/src/ui/widgets/snack_bars/warning_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum SnackBarType {
  error,
  success,
  warning,
  action,
}

class SnackBarService {
  SnackBarService(this.globalKey);

  final GlobalKey<NavigatorState> globalKey;

  void showSnackBar({
    required SnackBarType type,
    required String message,
    BuildContext? context,
  }) {
    final ctx = context ?? globalKey.currentContext!;
    switch (type) {
      case SnackBarType.error:
        ScaffoldMessenger.of(ctx).showSnackBar(
          ErrorSnackBar(message: message),
        );
        break;
      case SnackBarType.success:
        ScaffoldMessenger.of(ctx).showSnackBar(
          SuccessSnackBar(message: message),
        );
        break;
      case SnackBarType.warning:
        ScaffoldMessenger.of(ctx).showSnackBar(
          WarningSnackBar(message: message),
        );
        break;
      case SnackBarType.action:
        break;
    }
  }
}

final snackBarServiceProvider = Provider.autoDispose<SnackBarService>((ref) {
  final globalKey = ref.watch(globalKeyProvider);
  return SnackBarService(globalKey);
});
