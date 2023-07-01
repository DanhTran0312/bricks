import 'package:{{name.snakeCase()}}/src/router/app_router.dart';
import 'package:{{name.snakeCase()}}/src/ui/widgets/toasts/error_toast.dart';
import 'package:{{name.snakeCase()}}/src/ui/widgets/toasts/info_toast.dart';
import 'package:{{name.snakeCase()}}/src/ui/widgets/toasts/success_toast.dart';
import 'package:{{name.snakeCase()}}/src/ui/widgets/toasts/warning_toast.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum ToastType { success, error, info, warning }

Widget _getToastType(ToastType type, String message) {
  switch (type) {
    case ToastType.success:
      return SuccessToast(message: message);
    case ToastType.error:
      return ErrorToast(message: message);
    case ToastType.info:
      return InfoToast(message: message);
    case ToastType.warning:
      return WarningToast(message: message);
  }
}

class ToastService {
  ToastService(this.globalKey);

  final GlobalKey<NavigatorState> globalKey;

  void showToast({
    required ToastType type,
    required String message,
    BuildContext? context,
  }) {
    final ctx = context ?? globalKey.currentContext!;
    FToast()
      ..init(ctx)
      ..showToast(
        fadeDuration: const Duration(milliseconds: 400),
        toastDuration: const Duration(seconds: 3),
        child: _getToastType(type, message),
      );
  }
}

final toastServiceProvider = Provider.autoDispose<ToastService>((ref) {
  final globalKey = ref.watch(globalKeyProvider);
  return ToastService(globalKey);
});
