import 'package:{{name.snakeCase()}}_ui/lib.dart';
import 'package:flutter/material.dart';

// TODO: Configure the theme for {{name.pascalCase()}}.
/// Namespace for the {{name.pascalCase()}} [ThemeData].
class KTheme {
  static ThemeData get light {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: KColors.purple,
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
      tabBarTheme: _tabBarTheme,
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
      scaffoldBackgroundColor: KColors.coconut,
      floatingActionButtonTheme: _floatingActionButtonTheme,
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
      color: KColors.coconut,
      surfaceTintColor: KColors.transparent,
      shadowColor: KColors.lightPurple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }

  static InputDecorationTheme get _inputDecorationTheme {
    return InputDecorationTheme(
      fillColor: KColors.coconut,
      focusColor: KColors.purple,
      filled: true,
      errorMaxLines: 2,
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: KColors.bittersweet,
          width: 1.2,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(
          color: KColors.manatee200,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      suffixIconColor: KColors.manatee300,
      prefixIconColor: KColors.manatee300,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: KColors.manatee300.withOpacity(0.7),
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      hoverColor: KColors.purple.withOpacity(0.1),
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
        splashFactory: InkRipple.splashFactory,
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
        overlayColor: MaterialStateProperty.all(KColors.lighterPurple),
        splashFactory: InkRipple.splashFactory,
      ),
    );
  }

  static TextTheme get _textTheme {
    return TextTheme(
      displayLarge: KTextStyle.displayLarge,
      displayMedium: KTextStyle.displayMedium,
      displaySmall: KTextStyle.displaySmall,
      headlineMedium: KTextStyle.headlineMedium,
      headlineSmall: KTextStyle.headlineSmall,
      titleLarge: KTextStyle.titleLarge,
      titleMedium: KTextStyle.titleMedium,
      titleSmall: KTextStyle.titleSmall,
      bodyLarge: KTextStyle.bodyLarge,
      bodyMedium: KTextStyle.bodyMedium,
      bodySmall: KTextStyle.bodySmall,
      labelSmall: KTextStyle.labelSmall,
      labelLarge: KTextStyle.labelLarge,
    );
  }

  static AppBarTheme get _appBarTheme {
    return const AppBarTheme(
      elevation: 0,
      backgroundColor: KColors.coconut,
      surfaceTintColor: KColors.coconut,
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
    return const TooltipThemeData(
      decoration: BoxDecoration(
        color: KColors.woodSmoke,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: EdgeInsets.all(10),
      textStyle: TextStyle(color: KColors.coconut),
    );
  }

  static DialogTheme get _dialogTheme {
    return DialogTheme(
      backgroundColor: KColors.coconut,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  static BottomSheetThemeData get _bottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: KColors.coconut,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
    );
  }

  static TabBarTheme get _tabBarTheme {
    return const TabBarTheme(
      labelColor: KColors.whiteSmoke,
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
