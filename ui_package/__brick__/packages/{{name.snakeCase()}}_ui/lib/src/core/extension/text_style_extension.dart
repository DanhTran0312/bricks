import 'package:{{name.snakeCase()}}_ui/lib.dart';
import 'package:flutter/material.dart';

// TODO: configure your custom text style extension methods here
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
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);
  TextStyle get overline => copyWith(decoration: TextDecoration.overline);
  TextStyle get uppercase => copyWith(textBaseline: TextBaseline.alphabetic);
  TextStyle get lowercase => copyWith(textBaseline: TextBaseline.ideographic);
  TextStyle get capitalize => copyWith(textBaseline: TextBaseline.alphabetic);

  // Font colors
  TextStyle get cPrimary => copyWith(color: KColors.purple);
  TextStyle get cSecondary => copyWith(color: KColors.secondaryPurple);
  TextStyle get cCoconut => copyWith(color: KColors.coconut);
  TextStyle get cWoodSmoke => copyWith(color: KColors.woodSmoke);
  TextStyle get cIris60 => copyWith(color: KColors.iris60);
  TextStyle get cLavender => copyWith(color: KColors.lavender);
  TextStyle get cLightPurple => copyWith(color: KColors.lightPurple);
  TextStyle get cManatee => copyWith(color: KColors.manatee);
  TextStyle get cManatee100 => copyWith(color: KColors.manatee100);
  TextStyle get cManatee200 => copyWith(color: KColors.manatee200);
  TextStyle get cManatee300 => copyWith(color: KColors.manatee300);
  TextStyle get cManatee400 => copyWith(color: KColors.manatee400);
  TextStyle get cWhiteSmoke => copyWith(color: KColors.whiteSmoke);
  TextStyle get cCaribbean => copyWith(color: KColors.caribbean);
  TextStyle get cKoromiko => copyWith(color: KColors.koromiko);
  TextStyle get cBittersweet => copyWith(color: KColors.bittersweet);

  // Font sizes
  TextStyle get tiny => copyWith(fontSize: KFontSizes.tiny.value);
  TextStyle get small => copyWith(fontSize: KFontSizes.small.value);
  TextStyle get regular => copyWith(fontSize: KFontSizes.regular.value);
  TextStyle get medium => copyWith(fontSize: KFontSizes.medium.value);
  TextStyle get large => copyWith(fontSize: KFontSizes.large.value);
  TextStyle get extraLarge => copyWith(fontSize: KFontSizes.extraLarge.value);
}
