import 'package:{{name.snakeCase()}}/src/features/counter/view/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  counter,
}

final globalKeyProvider = Provider<GlobalKey<NavigatorState>>((ref) {
  final navigatorKey = GlobalKey<NavigatorState>();
  return navigatorKey;
});

final goRouterProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: AppRoute.counter.name,
        path: '/',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const CounterScreen(),
        ),
      ),
    ],
  ),
);
