import 'package:points_app/features/timer/presentation/providers/storage_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  FutureOr<int?> build() async {
    final pref = ref.read(storageServiceProvider.notifier);
    return pref.getInt('timerCounter');
  }

  Future<int?> getCounter() async {
    final pref = ref.read(storageServiceProvider.notifier);
    return pref.getInt('timerCounter');
  }

  void increment() async {
    final pref = ref.read(storageServiceProvider.notifier);

    final currentValue = state.value ?? 0;
    final newValue = currentValue + 1;
    state = AsyncValue.data(newValue);
    await pref.saveInt('timerCounter', newValue);
  }

  void resetCounter() async {
    final pref = ref.read(storageServiceProvider.notifier);
    state = AsyncData(0);
    await pref.saveInt('timerCounter', 0);
  }
}
