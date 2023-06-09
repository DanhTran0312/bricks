import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/l10n/l10n.dart';
import 'package:{{name.snakeCase()}}/src/router/app_router.dart';
import 'package:{{name.snakeCase()}}_ui/lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class {{name.pascalCase()}}App extends ConsumerWidget {
  const {{name.pascalCase()}}App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      theme: KTheme.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
