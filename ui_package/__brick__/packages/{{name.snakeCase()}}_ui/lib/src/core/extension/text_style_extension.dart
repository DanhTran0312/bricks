import 'package:{{name.snakeCase()}}_ui/lib.dart';
import 'package:flutter/material.dart';

// TODO: configure your custom text style extension methods here
extension TextStyleExtensions on TextStyle {
  // FontWeights
  TextStyle get wBlack => copyWith(fontWeight: KFontWeight.black);
  TextStyle get wBold => copyWith(fontWeight: KFontWeight.bold);
  TextStyle get wExtraBold => copyWith(fontWeight: KFontWeight.extraBold);
  TextStyle get wExtraLight => copyWith(fontWeight: KFontWeight.extraLight);
  TextStyle get wLight => copyWith(fontWeight: KFontWeight.light);
  TextStyle get wMedium => copyWith(fontWeight: KFontWeight.medium);
  TextStyle get wRegular => copyWith(fontWeight: KFontWeight.regular);
  TextStyle get wSemiBold => copyWith(fontWeight: KFontWeight.semiBold);
  TextStyle get wThin => copyWith(fontWeight: KFontWeight.thin);

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

  // Font sizes
  TextStyle get extraSmall => copyWith(fontSize: KFontSizes.extraSmall);
  TextStyle get small => copyWith(fontSize: KFontSizes.small);
  TextStyle get regular => copyWith(fontSize: KFontSizes.regular);
  TextStyle get medium => copyWith(fontSize: KFontSizes.medium);
  TextStyle get large => copyWith(fontSize: KFontSizes.large);
  TextStyle get extraLarge => copyWith(fontSize: KFontSizes.extraLarge);
}
