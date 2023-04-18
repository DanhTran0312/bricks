extension AssetsExtensions on String {
  String assetHelper() {
    return 'packages/{{name.snakeCase()}}_app_ui/$this';
  }
}
