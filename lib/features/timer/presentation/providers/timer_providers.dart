import 'dart:async';

import 'package:points_app/features/timer/presentation/providers/counter_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'timer_providers.g.dart';

enum TimerStateEnum { running, paused, resume, finish, reset }

@riverpod
class TimerState extends _$TimerState {
  @override
  TimerStateEnum build() {
    return TimerStateEnum.reset;
  }

  void setTimerState(TimerStateEnum stateVal) {
    state = stateVal;
  }
}

@riverpod
class Timer extends _$Timer {
  int _startValue = 30 * 60;
  StreamSubscription? _streamSubscription;

  @override
  int build() {
    return _startValue;
  }

  void setStartValue(int minutes) {
    _startValue = minutes;
    state = _startValue;
  }

  void startTimer() {
    ref.read(timerStateProvider.notifier).setTimerState(TimerStateEnum.running);
    final stream = Stream.periodic(Duration(milliseconds: 1), (val) => val);
    _streamSubscription = stream.listen((_) {
      state = state - 1;
      if (state == 0) {
        finishTimer();
      }
    });
  }

  void resetTimer() {
    ref.read(timerStateProvider.notifier).setTimerState(TimerStateEnum.reset);
    state = _startValue;
    _streamSubscription?.cancel();
  }

  void pauseTimer() {
    ref.read(timerStateProvider.notifier).setTimerState(TimerStateEnum.paused);
    _streamSubscription?.pause();
  }

  void resumeTimer() {
    ref.read(timerStateProvider.notifier).setTimerState(TimerStateEnum.resume);
    _streamSubscription?.resume();
  }

  void finishTimer() {
    ref.read(timerStateProvider.notifier).setTimerState(TimerStateEnum.finish);
    ref.read(timerFinishCounterProvider.notifier).increment();
    _streamSubscription?.cancel();
    state = _startValue;
  }
}
