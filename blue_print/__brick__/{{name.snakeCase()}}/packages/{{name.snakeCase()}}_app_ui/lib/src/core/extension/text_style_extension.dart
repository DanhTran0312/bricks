import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);
  TextStyle get overline => copyWith(decoration: TextDecoration.overline);
  TextStyle get uppercase => copyWith(textBaseline: TextBaseline.alphabetic);
  TextStyle get lowercase => copyWith(textBaseline: TextBaseline.ideographic);
  TextStyle get capitalize => copyWith(textBaseline: TextBaseline.alphabetic);
}
