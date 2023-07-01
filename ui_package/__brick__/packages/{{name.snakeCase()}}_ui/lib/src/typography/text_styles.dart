import 'package:{{name.snakeCase()}}_ui/lib.dart';
import 'package:flutter/widgets.dart';

// TODO: Configure text styles
/// {{name.pascalCase()}} Text Style Definitions
class KTextStyle {
  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w400`,
  ///
  /// font-size: `12`,
  ///
  /// font-family: `Inter`
  static const _baseTextStyle = TextStyle(
    package: 'testt_ui',
    fontFamily: FontFamily.montserrat,
    color: KColors.woodSmoke,
    fontWeight: KFontWeight.w400,
  );

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w700`,
  ///
  /// font-size: `40`
  static TextStyle get displayLarge {
    return _baseTextStyle.copyWith(
      // 40
      fontSize: KFontSizes.extraLarge.value,
      // 700
      fontWeight: KFontWeight.w700,
    );
  }

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w700`,
  ///
  /// font-size: `32`
  static TextStyle get displayMedium {
    return _baseTextStyle.copyWith(
      // 32
      fontSize: KFontSizes.large.value,
      // w600
      fontWeight: KFontWeight.w600,
    );
  }

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w600`,
  ///
  /// font-size: `24`
  static TextStyle get displaySmall {
    return _baseTextStyle.copyWith(
      // 24
      fontSize: KFontSizes.medium.value,
      // w600
      fontWeight: KFontWeight.w600,
    );
  }

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w500`,
  ///
  /// font-size: `32`
  static TextStyle get headlineMedium {
    return _baseTextStyle.copyWith(
      // 32
      fontSize: KFontSizes.large.value,
      // w500
      fontWeight: KFontWeight.w500,
    );
  }

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w500`,
  ///
  /// font-size: `24`
  static TextStyle get headlineSmall {
    return _baseTextStyle.copyWith(
      // 24
      fontSize: KFontSizes.medium.value,
      // w500
      fontWeight: KFontWeight.w500,
    );
  }

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w600`,
  ///
  /// font-size: `40`
  static TextStyle get titleLarge {
    return _baseTextStyle.copyWith(
      // 40
      fontSize: KFontSizes.extraLarge.value,
      // w600
      fontWeight: KFontWeight.w600,
    );
  }

  // This is the same as titleSmall and bodyLarge?
  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w500`,
  ///
  /// font-size: `24`
  static TextStyle get titleMedium {
    return _baseTextStyle.copyWith(
      // 24
      fontSize: KFontSizes.medium.value,
      // w500
      fontWeight: KFontWeight.w500,
    );
  }

  // This is the same as titleMedium and bodyLarge?
  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w500`,
  ///
  /// font-size: `16
  static TextStyle get titleSmall {
    return _baseTextStyle.copyWith(
      // 16
      fontSize: KFontSizes.regular.value,
      // w500
      fontWeight: KFontWeight.w500,
    );
  }

  // This is the same as titleMedium and titleSmall?
  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w500`,
  ///
  /// font-size: `24`
  static TextStyle get bodyLarge {
    return _baseTextStyle.copyWith(
      // 24
      fontSize: KFontSizes.medium.value,
      // w500
      fontWeight: KFontWeight.w500,
    );
  }

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w400`,
  ///
  /// font-size: `16`
  static TextStyle get bodyMedium {
    return _baseTextStyle.copyWith(
      // 16
      fontSize: KFontSizes.regular.value,
      // w400
      fontWeight: KFontWeight.w400,
    );
  }

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w400`,
  ///
  /// font-size: `14`
  static TextStyle get bodySmall {
    return _baseTextStyle.copyWith(
      // 14
      fontSize: KFontSizes.small.value,
      // w400
      fontWeight: KFontWeight.w400,
    );
  }

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w400`,
  ///
  /// font-size: `12`
  static TextStyle get labelSmall {
    return _baseTextStyle.copyWith(
      // 13
      fontSize: KFontSizes.tiny.value,
      // w400
      fontWeight: KFontWeight.w400,
    );
  }

  /// color: `KColors.woodSmoke`,
  ///
  /// font-weight: `w500`,
  ///
  /// font-size: `14`
  static TextStyle get labelLarge {
    return _baseTextStyle.copyWith(
      // 14
      fontSize: KFontSizes.small.value,
      // w500
      fontWeight: KFontWeight.w500,
    );
  }
}
