import 'package:{{name.snakeCase()}}_ui/lib.dart';

extension AssetExtension on String {
  String get toPath => 'packages/{{name.snakeCase()}}_ui/$this';
}

extension AssetsExtensions on AssetGenImage {
  String get toPath => 'packages/{{name.snakeCase()}}_ui/$path';
}
