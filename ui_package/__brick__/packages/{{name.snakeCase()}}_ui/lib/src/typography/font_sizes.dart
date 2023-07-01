// ignore_for_file: sort_constructors_first

/// Font sizes used in the app
enum KFontSizes {
  /// 12
  tiny(12),

  /// 14
  small(14),

  /// 16
  regular(16),

  /// 24
  medium(24),

  /// 32
  large(32),

  /// 40
  extraLarge(40);

  /// Hover over the value (small, regular, ...) to see the actual size
  final double value;

  const KFontSizes(this.value);
}
