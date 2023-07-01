import 'package:{{name.snakeCase()}}_ui/lib.dart';
import 'package:flutter/widgets.dart';

/// Signature for the individual builders (`small`, `large`, etc.).
typedef ResponsiveLayoutWidgetBuilder = Widget Function(BuildContext, Widget?);

/// {@template responsive_layout_builder}
/// A wrapper around [LayoutBuilder] which exposes builders for
/// various responsive breakpoints.
/// {@endtemplate}
class ResponsiveLayoutBuilder extends StatelessWidget {
  /// {@macro responsive_layout_builder}
  const ResponsiveLayoutBuilder({
    required this.mobile,
    required this.desktop,
    this.tablet,
    this.xLarge,
    this.child,
    super.key,
  });

  /// Optional child widget which will be passed
  /// to the `small`, `large` and `xLarge`
  /// builders as a way to share/optimize shared layout.
  final Widget? child;

  /// [ResponsiveLayoutWidgetBuilder] for large layout.
  final ResponsiveLayoutWidgetBuilder desktop;

  /// [ResponsiveLayoutWidgetBuilder] for small layout.
  final ResponsiveLayoutWidgetBuilder mobile;

  /// [ResponsiveLayoutWidgetBuilder] for medium layout.
  final ResponsiveLayoutWidgetBuilder? tablet;

  /// [ResponsiveLayoutWidgetBuilder] for xLarge layout.
  final ResponsiveLayoutWidgetBuilder? xLarge;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= Breakpoints.small.value) {
          return mobile(context, child);
        } else if (constraints.maxWidth <= Breakpoints.medium.value) {
          return (tablet ?? desktop).call(context, child);
        } else if (constraints.maxWidth <= Breakpoints.large.value) {
          return desktop(context, child);
        } else {
          return (xLarge ?? desktop).call(context, child);
        }
      },
    );
  }
}
