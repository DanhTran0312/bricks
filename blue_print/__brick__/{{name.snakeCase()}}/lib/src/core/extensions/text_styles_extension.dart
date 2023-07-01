import 'package:flutter/material.dart';

extension TextStylesExtension on BuildContext {
  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w700`,
  ///
  /// font-size: `40`
  TextStyle get displayLarge => Theme.of(this).textTheme.displayLarge!;

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w700`,
  ///
  /// font-size: `32`
  TextStyle get displayMedium => Theme.of(this).textTheme.displayMedium!;

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w600`,
  ///
  /// font-size: `24`
  TextStyle get displaySmall => Theme.of(this).textTheme.displaySmall!;

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w500`,
  ///
  /// font-size: `32`
  TextStyle get headlineMedium => Theme.of(this).textTheme.headlineMedium!;

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w500`,
  ///
  /// font-size: `24`
  TextStyle get headlineSmall => Theme.of(this).textTheme.headlineSmall!;

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w600`,
  ///
  /// font-size: `40`
  TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge!;

  // This is the same as titleSmall and bodyLarge?
  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w500`,
  ///
  /// font-size: `24`
  TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium!;

  // This is the same as titleMedium and bodyLarge?
  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w500`,
  ///
  /// font-size: `18`
  TextStyle get titleSmall => Theme.of(this).textTheme.titleSmall!;

  // This is the same as titleMedium and titleSmall?
  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w500`,
  ///
  /// font-size: `24`
  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!;

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w400`,
  ///
  /// font-size: `18`
  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w400`,
  ///
  /// font-size: `14`
  TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall!;

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w400`,
  ///
  /// font-size: `12`
  TextStyle get labelSmall => Theme.of(this).textTheme.labelSmall!;

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w500`,
  ///
  /// font-size: `14`
  TextStyle get labelLarge => Theme.of(this).textTheme.labelLarge!;
}
