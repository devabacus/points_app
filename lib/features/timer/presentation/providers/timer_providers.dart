import 'dart:async';

import 'package:points_app/features/timer/data/models/timer_state.dart';
import 'package:points_app/features/timer/presentation/providers/counter_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'timer_providers.g.dart';

enum TimerStateEnum { running, paused, resume, finish, reset }

@riverpod
class Timer extends _$Timer {
  StreamSubscription? _streamSubscription;
   final initialValue = 30*60; 

  @override
  TimerStateModel build() {
    return TimerStateModel(
      remainingSeconds: initialValue,
      status: TimerStateEnum.reset,
      initialValue: initialValue,
    );
  }

  void setStartValue(int minutes) {
    state = state.copyWith(remainingSeconds: minutes, initialValue: minutes);
  }

  void startTimer() {
    state = state.copyWith(status: TimerStateEnum.running);

    final stream = Stream.periodic(Duration(seconds: 1));

    _streamSubscription = stream.listen((_) {

      final remaining = state.remainingSeconds - 1;
     
      if (remaining <= 0) {
        state = state.copyWith(
          remainingSeconds: 0,
          status: TimerStateEnum.finish,
        );
        finishTimer();
      } else {
        state = state.copyWith(remainingSeconds: remaining, status: TimerStateEnum.running);
      }
    });
  }

  void resetTimer() {
    state = state.copyWith(remainingSeconds: initialValue, status: TimerStateEnum.reset);
    _streamSubscription?.cancel();
  }

  void pauseTimer() {
    state = state.copyWith(status: TimerStateEnum.paused);
    _streamSubscription?.pause();
  }

  void resumeTimer() {
    state = state.copyWith(status: TimerStateEnum.resume);
    _streamSubscription?.resume();
  }

  void finishTimer() {
    ref.read(counterProvider.notifier).increment();
    _streamSubscription?.cancel();
    state = state.copyWith(initialValue: initialValue, status: TimerStateEnum.finish);
  }
}
