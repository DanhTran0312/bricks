import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterController extends StateNotifier<AsyncValue<int>> {
  CounterController() : super(const AsyncValue.data(0));

  void increment() {
    state = state.whenData((value) => value + 1);
    debugPrint('increment: $state');
  }

  void decrement() {
    state = state.whenData((value) => value - 1);
    debugPrint('decrement: $state');
  }
}

final counterProvider =
    StateNotifierProvider<CounterController, AsyncValue<int>>(
  (ref) => CounterController(),
);
