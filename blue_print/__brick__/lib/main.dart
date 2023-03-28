// ignore_for_file: depend_on_referenced_packages

import 'package:{{name.snakeCase()}}/src/app.dart';
import 'package:{{name.snakeCase()}}/src/l10n/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // * Set the path strategy to use the browser's path instead of the #.
  usePathUrlStrategy();
  // * Register error handlers
  registerErrorHandlers();

  runApp(const ProviderScope(child: {{name.pascalCase()}}App()));
}

void registerErrorHandlers() {
  // * Show some error UI if any uncaught exception happens
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    debugPrint(details.toString());
  };
  // * Handle errors from the underlying platform/OS
  PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
    debugPrint(error.toString());
    return true;
  };
  // * Show some error UI when any widget in the app fails to build
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Builder(
      builder: (context) {
        final l10n = context.l10n;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text(l10n.errorOccurred),
          ),
          body: Center(child: Text(details.toString())),
        );
      },
    );
  };
}
