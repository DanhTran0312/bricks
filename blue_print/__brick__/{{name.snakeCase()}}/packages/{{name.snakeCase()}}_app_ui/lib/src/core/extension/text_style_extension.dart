import 'package:{{name.snakeCase()}}_app_ui/lib.dart';
import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  // FontWeights
  TextStyle get w900 => copyWith(fontWeight: KFontWeight.w900);
  TextStyle get w800 => copyWith(fontWeight: KFontWeight.w800);
  TextStyle get w700 => copyWith(fontWeight: KFontWeight.w700);
  TextStyle get w600 => copyWith(fontWeight: KFontWeight.w600);
  TextStyle get w500 => copyWith(fontWeight: KFontWeight.w500);
  TextStyle get w400 => copyWith(fontWeight: KFontWeight.w400);
  TextStyle get w300 => copyWith(fontWeight: KFontWeight.w300);
  TextStyle get w200 => copyWith(fontWeight: KFontWeight.w200);
  TextStyle get w100 => copyWith(fontWeight: KFontWeight.w100);

  // FontStyles and TextDecorations
  TextStyle get dItalic => copyWith(fontStyle: FontStyle.italic);
  TextStyle get dUnderline => copyWith(decoration: TextDecoration.underline);
  TextStyle get dLineThrough =>
      copyWith(decoration: TextDecoration.lineThrough);
  TextStyle get dOverline => copyWith(decoration: TextDecoration.overline);
  TextStyle get dUppercase => copyWith(textBaseline: TextBaseline.alphabetic);
  TextStyle get dLowercase => copyWith(textBaseline: TextBaseline.ideographic);
  TextStyle get dCapitalize => copyWith(textBaseline: TextBaseline.alphabetic);
  TextStyle get dEllipsis => copyWith(overflow: TextOverflow.ellipsis);

  // Font sizes
  TextStyle get s10 => copyWith(fontSize: KFontSizes.s10.value);
  TextStyle get s12 => copyWith(fontSize: KFontSizes.s12.value);
  TextStyle get s14 => copyWith(fontSize: KFontSizes.s14.value);
  TextStyle get s16 => copyWith(fontSize: KFontSizes.s16.value);
  TextStyle get s18 => copyWith(fontSize: KFontSizes.s18.value);
  TextStyle get s25 => copyWith(fontSize: KFontSizes.s25.value);
}
