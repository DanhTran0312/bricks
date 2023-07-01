import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}_ui/lib.dart';

extension ThemeExtension on ThemeData {
  ThemeData get small {
    final textTheme = this.textTheme;
    return copyWith(
      textTheme: scaleTextTheme(textTheme, smallTextScaleFactor),
    );
  }

  ThemeData get medium {
    final textTheme = this.textTheme;
    return copyWith(
      textTheme: scaleTextTheme(textTheme, mediumTextScaleFactor),
    );
  }

  ThemeData get large {
    final textTheme = this.textTheme;
    return copyWith(
      textTheme: scaleTextTheme(textTheme, largeTextScaleFactor),
    );
  }
}

TextTheme scaleTextTheme(TextTheme textTheme, double scaleFactor) {
  return TextTheme(
    displayLarge: textTheme.displayLarge!.copyWith(
      fontSize: KTextStyle.displayLarge.fontSize! * scaleFactor,
    ),
    displayMedium: textTheme.displayMedium!.copyWith(
      fontSize: KTextStyle.displayMedium.fontSize! * scaleFactor,
    ),
    displaySmall: textTheme.displaySmall!.copyWith(
      fontSize: KTextStyle.displaySmall.fontSize! * scaleFactor,
    ),
    headlineMedium: textTheme.headlineMedium!.copyWith(
      fontSize: KTextStyle.headlineMedium.fontSize! * scaleFactor,
    ),
    headlineSmall: textTheme.headlineSmall!.copyWith(
      fontSize: KTextStyle.headlineSmall.fontSize! * scaleFactor,
    ),
    titleLarge: textTheme.titleLarge!.copyWith(
      fontSize: KTextStyle.titleLarge.fontSize! * scaleFactor,
    ),
    titleMedium: textTheme.titleMedium!.copyWith(
      fontSize: KTextStyle.titleMedium.fontSize! * scaleFactor,
    ),
    titleSmall: textTheme.titleSmall!.copyWith(
      fontSize: KTextStyle.titleSmall.fontSize! * scaleFactor,
    ),
    bodyLarge: textTheme.bodyLarge!.copyWith(
      fontSize: KTextStyle.bodyLarge.fontSize! * scaleFactor,
    ),
    bodyMedium: textTheme.bodyMedium!.copyWith(
      fontSize: KTextStyle.bodyMedium.fontSize! * scaleFactor,
    ),
    bodySmall: textTheme.bodySmall!.copyWith(
      fontSize: KTextStyle.bodySmall.fontSize! * scaleFactor,
    ),
    labelSmall: textTheme.labelSmall!.copyWith(
      fontSize: KTextStyle.labelSmall.fontSize! * scaleFactor,
    ),
    labelLarge: textTheme.labelLarge!.copyWith(
      fontSize: KTextStyle.labelLarge.fontSize! * scaleFactor,
    ),
  );
}
