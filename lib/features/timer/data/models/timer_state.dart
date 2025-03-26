import 'package:points_app/features/timer/presentation/providers/timer_providers.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_state.freezed.dart';
part 'timer_state.g.dart';

@freezed
abstract class TimerStateModel with _$TimerStateModel {
  const factory TimerStateModel({
    required int remainingSeconds,
    required TimerStateEnum status,
    required int initialValue,
  }) = _TimerStateModel;

  factory TimerStateModel.fromJson(Map<String, dynamic> json) =>
      _$TimerStateModelFromJson(json);
}

