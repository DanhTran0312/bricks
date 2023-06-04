// ignore_for_file: sort_constructors_first

/// Font sizes used in the app
enum KFontSizes {
  /// 10
  s10(10),

  /// 12
  s12(12),

  /// 14
  s14(14),

  /// 16
  s16(16),

  /// 18
  s18(18),

  /// 25
  s25(25);

  /// Hover over the value (small, regular, ...) to see the actual size
  final double value;

  const KFontSizes(this.value);
}
