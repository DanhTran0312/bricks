import 'package:{{name.snakeCase()}}_ui/lib.dart';
import 'package:flutter/material.dart';

class KDarkTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: KColors.purple,
        brightness: Brightness.dark,
      ),
      highlightColor: KColors.lighterPurple,
      splashColor: KColors.lighterPurple,
      hoverColor: KColors.lighterPurple.withOpacity(0.4),
      splashFactory: InkRipple.splashFactory,
      appBarTheme: _appBarTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      textTheme: _textTheme,
      dialogBackgroundColor: KColors.coconut,
      dialogTheme: _dialogTheme,
      tooltipTheme: _tooltipTheme,
      bottomSheetTheme: _bottomSheetTheme,
      dividerTheme: _dividerTheme,
      textButtonTheme: _textButtonTheme,
      textSelectionTheme: _textSelectionTheme,
      iconButtonTheme: _iconButtonTheme,
      inputDecorationTheme: _inputDecorationTheme,
      cardTheme: _cardTheme,
      listTileTheme: _listTileTheme,
      iconTheme: _iconTheme,
      chipTheme: _chipTheme,
      useMaterial3: true,
      floatingActionButtonTheme: _floatingActionButtonTheme,
      scaffoldBackgroundColor: KColors.woodSmoke,
    );
  }

  static ChipThemeData get _chipTheme {
    return ChipThemeData(
      backgroundColor: KColors.lighterPurple,
      disabledColor: KColors.manatee300,
      selectedColor: KColors.lighterPurple,
      secondarySelectedColor: KColors.lighterPurple,
      side: BorderSide.none,
      padding: const EdgeInsets.all(5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }

  static ListTileThemeData get _listTileTheme {
    return ListTileThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      enableFeedback: true,
    );
  }

  static FloatingActionButtonThemeData get _floatingActionButtonTheme {
    return const FloatingActionButtonThemeData(
      shape: CircleBorder(),
    );
  }

  static CardTheme get _cardTheme {
    return CardTheme(
      color: KColors.woodSmoke,
      shadowColor: KColors.lightPurple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }

  static InputDecorationTheme get _inputDecorationTheme {
    return InputDecorationTheme(
      fillColor: KColors.woodSmoke,
      focusColor: KColors.purple,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: KColors.manatee200.withOpacity(0.7),
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      suffixIconColor: KColors.manatee200,
      errorMaxLines: 2,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: KColors.manatee200.withOpacity(0.7),
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: KColors.purple,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: KColors.bittersweet,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: KColors.bittersweet,
          width: 1.2,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
    );
  }

  static TextSelectionThemeData get _textSelectionTheme {
    return const TextSelectionThemeData(
      cursorColor: KColors.purple,
      selectionColor: KColors.secondaryPurple,
      selectionHandleColor: KColors.purple,
    );
  }

  static TextButtonThemeData get _textButtonTheme {
    return TextButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        foregroundColor: MaterialStateProperty.all(KColors.transparent),
        surfaceTintColor: MaterialStateProperty.all(KColors.transparent),
        overlayColor: MaterialStateProperty.all(KColors.transparent),
      ),
    );
  }

  static IconThemeData get _iconTheme {
    return const IconThemeData(
      color: KColors.purple,
      size: 24,
    );
  }

  static IconButtonThemeData get _iconButtonTheme {
    return IconButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(KColors.manatee),
        splashFactory: InkRipple.splashFactory,
      ),
    );
  }

  static TextTheme get _textTheme {
    return TextTheme(
      displayLarge: KTextStyle.displayLarge.cCoconut,
      displayMedium: KTextStyle.displayMedium.cCoconut,
      displaySmall: KTextStyle.displaySmall.cCoconut,
      headlineMedium: KTextStyle.headlineMedium.cCoconut,
      headlineSmall: KTextStyle.headlineSmall.cCoconut,
      titleLarge: KTextStyle.titleLarge.cCoconut,
      titleMedium: KTextStyle.titleMedium.cCoconut,
      titleSmall: KTextStyle.titleSmall.cCoconut,
      bodyLarge: KTextStyle.bodyLarge.cCoconut,
      bodyMedium: KTextStyle.bodyMedium.cCoconut,
      bodySmall: KTextStyle.bodySmall.cCoconut,
      labelSmall: KTextStyle.labelSmall.cCoconut,
      labelLarge: KTextStyle.labelLarge.cCoconut,
    );
  }

  static AppBarTheme get _appBarTheme {
    return const AppBarTheme(
      elevation: 0,
      backgroundColor: KColors.woodSmoke,
      surfaceTintColor: KColors.woodSmoke,
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        backgroundColor: KColors.purple,
        foregroundColor: KColors.purple,
      ),
    );
  }

  static TooltipThemeData get _tooltipTheme {
    return TooltipThemeData(
      decoration: const BoxDecoration(
        color: KColors.manatee,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: const EdgeInsets.all(10),
      textStyle: KTextStyle.bodyMedium.cCoconut,
    );
  }

  static DialogTheme get _dialogTheme {
    return DialogTheme(
      backgroundColor: KColors.woodSmoke,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  static BottomSheetThemeData get _bottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: KColors.woodSmoke,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
    );
  }

  static DividerThemeData get _dividerTheme {
    return const DividerThemeData(
      space: 0,
      thickness: 1,
      color: KColors.manatee100,
    );
  }
}
