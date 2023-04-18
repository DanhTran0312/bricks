enum Gap {
  none(0),
  xxs(2),
  xs(4),
  s(8),
  m(16),
  l(24),
  xl(32),
  xxl(40),
  xxxl(48);

  const Gap(this.value);
  final double value;
}
