import 'package:{{name.snakeCase()}}_app_ui/lib.dart';
import 'package:flutter/material.dart';

extension GapExtension on Gap {
  Widget get height => SizedBox(height: value);
  Widget get width => SizedBox(width: value);
}
