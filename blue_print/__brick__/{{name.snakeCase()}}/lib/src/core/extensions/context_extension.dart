import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Size get getSize => MediaQuery.of(this).size;

  double get getHeight => getSize.height;

  double get getWidth => getSize.width;

  ThemeMode get themeMode => Theme.of(this).brightness == Brightness.dark
      ? ThemeMode.dark
      : ThemeMode.light;
}
