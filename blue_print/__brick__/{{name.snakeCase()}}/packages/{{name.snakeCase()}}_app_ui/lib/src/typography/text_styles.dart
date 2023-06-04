import 'package:{{name.snakeCase()}}_app_ui/lib.dart';
import 'package:flutter/widgets.dart';

/// Century Text Style Definitions
class KTextStyle {
  static const _baseTextStyle = TextStyle(
    package: 'century_app_ui',
    fontFamily: FontFamily.nunitoSans,
    color: KColor.black,
    fontWeight: KFontWeight.w400,
  );

  /// Headline 1 Text Style
  static TextStyle get displayLarge {
    return _baseTextStyle.copyWith(
      fontSize: 56,
      fontWeight: KFontWeight.w500,
    );
  }

  /// Headline 2 Text Style
  static TextStyle get displayMedium {
    return _baseTextStyle.copyWith(
      fontSize: 30,
      fontWeight: KFontWeight.w400,
    );
  }

  /// Headline 3 Text Style
  static TextStyle get displaySmall {
    return _baseTextStyle.copyWith(
      fontSize: 28,
      fontWeight: KFontWeight.w400,
    );
  }

  /// Headline 4 Text Style
  static TextStyle get headlineMedium {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: KFontWeight.w700,
    );
  }

  /// Headline 5 Text Style
  static TextStyle get headlineSmall {
    return _baseTextStyle.copyWith(
      fontSize: 20,
      fontWeight: KFontWeight.w500,
    );
  }

  /// Headline 6 Text Style
  static TextStyle get titleLarge {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: KFontWeight.w700,
    );
  }

  /// Subtitle 1 Text Style
  static TextStyle get titleMedium {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: KFontWeight.w700,
    );
  }

  /// Subtitle 2 Text Style
  static TextStyle get titleSmall {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: KFontWeight.w700,
    );
  }

  /// Body Text 1 Text Style
  static TextStyle get bodyLarge {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: KFontWeight.w500,
    );
  }

  /// Body Text 2 Text Style (the default)
  static TextStyle get bodyMedium {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: KFontWeight.w400,
    );
  }

  /// Caption Text Style
  static TextStyle get bodySmall {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: KFontWeight.w400,
    );
  }

  /// Overline Text Style
  static TextStyle get labelSmall {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: KFontWeight.w400,
    );
  }

  /// Button Text Style
  static TextStyle get labelLarge {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: KFontWeight.w500,
    );
  }
}
