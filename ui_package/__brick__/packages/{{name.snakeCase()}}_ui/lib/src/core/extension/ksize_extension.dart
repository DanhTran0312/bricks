import 'package:{{name.snakeCase()}}_ui/lib.dart';
import 'package:flutter/material.dart';

extension KSizeExtension on KSize {
  // Spacing
  Widget get vertical => SizedBox(height: value);
  Widget get horizontal => SizedBox(width: value);

  // Padding
  Widget get pA => Padding(padding: EdgeInsets.all(value));
  Widget get pH => Padding(padding: EdgeInsets.symmetric(horizontal: value));
  Widget get pV => Padding(padding: EdgeInsets.symmetric(vertical: value));
}
