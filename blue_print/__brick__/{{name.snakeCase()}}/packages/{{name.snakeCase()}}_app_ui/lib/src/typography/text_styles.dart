import 'package:{{name.snakeCase()}}_app_ui/src/colors.dart';
import 'package:{{name.snakeCase()}}_app_ui/src/typography/typography.dart';
import 'package:flutter/widgets.dart';

/// {{name.pascalCase()}} Text Style Definitions
class {{name.pascalCase()}}TextStyle {
  static const _baseTextStyle = TextStyle(
    package: '{{name.snakeCase()}}_app_ui',
    fontFamily: FontFamily.openSans,
    color: {{name.pascalCase()}}Colors.black,
    fontWeight: {{name.pascalCase()}}FontWeight.regular,
  );

  /// Headline 1 Text Style
  static TextStyle get displayLarge {
    return _baseTextStyle.copyWith(
      fontSize: 56,
      fontWeight: {{name.pascalCase()}}FontWeight.medium,
    );
  }

  /// Headline 2 Text Style
  static TextStyle get displayMedium {
    return _baseTextStyle.copyWith(
      fontSize: 30,
      fontWeight: {{name.pascalCase()}}FontWeight.regular,
    );
  }

  /// Headline 3 Text Style
  static TextStyle get displaySmall {
    return _baseTextStyle.copyWith(
      fontSize: 28,
      fontWeight: {{name.pascalCase()}}FontWeight.regular,
    );
  }

  /// Headline 4 Text Style
  static TextStyle get headlineMedium {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: {{name.pascalCase()}}FontWeight.bold,
    );
  }

  /// Headline 5 Text Style
  static TextStyle get headlineSmall {
    return _baseTextStyle.copyWith(
      fontSize: 20,
      fontWeight: {{name.pascalCase()}}FontWeight.medium,
    );
  }

  /// Headline 6 Text Style
  static TextStyle get titleLarge {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: {{name.pascalCase()}}FontWeight.bold,
    );
  }

  /// Subtitle 1 Text Style
  static TextStyle get titleMedium {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: {{name.pascalCase()}}FontWeight.bold,
    );
  }

  /// Subtitle 2 Text Style
  static TextStyle get titleSmall {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: {{name.pascalCase()}}FontWeight.bold,
    );
  }

  /// Body Text 1 Text Style
  static TextStyle get bodyLarge {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: {{name.pascalCase()}}FontWeight.medium,
    );
  }

  /// Body Text 2 Text Style (the default)
  static TextStyle get bodyMedium {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: {{name.pascalCase()}}FontWeight.regular,
    );
  }

  /// Caption Text Style
  static TextStyle get bodySmall {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: {{name.pascalCase()}}FontWeight.regular,
    );
  }

  /// Overline Text Style
  static TextStyle get labelSmall {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: {{name.pascalCase()}}FontWeight.regular,
    );
  }

  /// Button Text Style
  static TextStyle get labelLarge {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: {{name.pascalCase()}}FontWeight.medium,
    );
  }
}
