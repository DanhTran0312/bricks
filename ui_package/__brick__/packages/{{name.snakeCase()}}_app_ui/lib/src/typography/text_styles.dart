import 'package:{{name.snakeCase()}}_app_ui/lib.dart';
import 'package:{{name.snakeCase()}}_app_ui/src/gen/fonts.gen.dart';
import 'package:flutter/widgets.dart';

// TODO: Configure text styles
/// {{name.pascalCase()}} Text Style Definitions
class KTextStyle {
  static const _baseTextStyle = TextStyle(
    package: '{{name.snakeCase()}}_app_ui',
    fontFamily: FontFamily.nunitoSans,
    color: KColor.black,
    fontWeight: KFontWeight.regular,
  );

  static TextStyle get displayLarge {
    return _baseTextStyle.copyWith(
      fontSize: 56,
      fontWeight: KFontWeight.medium,
    );
  }

  static TextStyle get displayMedium {
    return _baseTextStyle.copyWith(
      fontSize: 30,
      fontWeight: KFontWeight.regular,
    );
  }

  static TextStyle get displaySmall {
    return _baseTextStyle.copyWith(
      fontSize: 28,
      fontWeight: KFontWeight.regular,
    );
  }

  static TextStyle get headlineMedium {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: KFontWeight.bold,
    );
  }

  static TextStyle get headlineSmall {
    return _baseTextStyle.copyWith(
      fontSize: 20,
      fontWeight: KFontWeight.medium,
    );
  }

  static TextStyle get titleLarge {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: KFontWeight.bold,
    );
  }

  static TextStyle get titleMedium {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: KFontWeight.bold,
    );
  }

  static TextStyle get titleSmall {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: KFontWeight.bold,
    );
  }

  static TextStyle get bodyLarge {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: KFontWeight.medium,
    );
  }

  static TextStyle get bodyMedium {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: KFontWeight.regular,
    );
  }

  static TextStyle get bodySmall {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: KFontWeight.regular,
    );
  }

  static TextStyle get labelSmall {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: KFontWeight.regular,
    );
  }

  static TextStyle get labelLarge {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: KFontWeight.medium,
    );
  }
}
