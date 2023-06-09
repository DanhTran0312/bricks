import 'package:flutter/material.dart';

enum KSize {
  none(0),
  xxs(2),
  xs(4),
  s(8),
  m(16),
  l(24),
  xl(32),
  xxl(40),
  xxxl(48);

  const KSize(this.value);
  final double value;
}

SizedBox verticalSpace(double value) => SizedBox(height: value);
SizedBox horizontalSpace(double value) => SizedBox(width: value);
