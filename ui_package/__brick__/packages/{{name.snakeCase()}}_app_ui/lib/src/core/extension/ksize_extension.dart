import 'package:{{name.snakeCase()}}_app_ui/lib.dart';
import 'package:flutter/material.dart';

extension KSizeExtension on KSize {
  // Spacing
  Widget get height => SizedBox(height: value);
  Widget get width => SizedBox(width: value);

  // Padding
  Widget get pA => Padding(padding: EdgeInsets.all(value));
  Widget get pH => Padding(padding: EdgeInsets.symmetric(horizontal: value));
  Widget get pV => Padding(padding: EdgeInsets.symmetric(vertical: value));
}
