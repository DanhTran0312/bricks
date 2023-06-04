import 'package:{{name.snakeCase()}}_app_ui/lib.dart';

extension AssetExtension on String {
  String get toPath => 'packages/{{name.snakeCase()}}_app_ui/$this';
}

extension AssetsExtensions on AssetGenImage {
  String get toPath => 'packages/{{name.snakeCase()}}_app_ui/$path';
}
