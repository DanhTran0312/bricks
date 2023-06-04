import 'package:{{name.snakeCase()}}_app_ui/lib.dart';
import 'package:flutter/material.dart';

extension GapExtension on KSize {
  Widget get vertical => SizedBox(height: value);
  Widget get horizontal => SizedBox(width: value);

  // Padding
  EdgeInsets get pA => EdgeInsets.all(value);
  EdgeInsets get pH => EdgeInsets.symmetric(horizontal: value);
  EdgeInsets get pV => EdgeInsets.symmetric(vertical: value);
}
