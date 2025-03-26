import 'package:points_app/features/timer/presentation/providers/timer_providers.dart';



class TimerStateModel {
  final int remainingSeconds;
  final TimerStateEnum status;
  final int initialValue;

  TimerStateModel({
    required this.remainingSeconds,
    required this.status,
    required this.initialValue,
  });

  TimerStateModel copyWith({
    int? remainingSeconds,
    TimerStateEnum? status,
    int? initialValue,
  }) {
    return TimerStateModel(
      remainingSeconds: remainingSeconds ?? this.remainingSeconds,
      status: status ?? this.status,
      initialValue: initialValue ?? this.initialValue,
    );
  }
}


