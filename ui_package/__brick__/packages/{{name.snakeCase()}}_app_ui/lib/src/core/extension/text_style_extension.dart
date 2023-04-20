import 'package:{{name.snakeCase()}}_app_ui/lib.dart';
import 'package:flutter/material.dart';

// TODO: configure your custom text style extension methods here
extension TextStyleExtensions on TextStyle {
  // FontWeights
  TextStyle get black => copyWith(fontWeight: KFontWeight.black);
  TextStyle get bold => copyWith(fontWeight: KFontWeight.bold);
  TextStyle get extraBold => copyWith(fontWeight: KFontWeight.extraBold);
  TextStyle get extraLight => copyWith(fontWeight: KFontWeight.extraLight);
  TextStyle get light => copyWith(fontWeight: KFontWeight.light);
  TextStyle get medium => copyWith(fontWeight: KFontWeight.medium);
  TextStyle get regular => copyWith(fontWeight: KFontWeight.regular);
  TextStyle get semiBold => copyWith(fontWeight: KFontWeight.semiBold);
  TextStyle get thin => copyWith(fontWeight: KFontWeight.thin);

  // FontStyles and TextDecorations
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);
  TextStyle get overline => copyWith(decoration: TextDecoration.overline);
  TextStyle get uppercase => copyWith(textBaseline: TextBaseline.alphabetic);
  TextStyle get lowercase => copyWith(textBaseline: TextBaseline.ideographic);
  TextStyle get capitalize => copyWith(textBaseline: TextBaseline.alphabetic);

  // Font colors
  TextStyle get primary => copyWith(color: KColors.primary);
  TextStyle get secondary => copyWith(color: KColors.secondary);
}
