import 'package:flutter/material.dart';
import 'package:points_app/features/timer/data/models/timer_state.dart';
import 'package:points_app/features/timer/utils/tick_value_handle.dart';

class TimerDisplay extends StatelessWidget {
  final TimerStateModel timer;

  const TimerDisplay({required this.timer, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      TickStr.format(timer.remainingSeconds),
      style: TextStyle(fontSize: 30),
    );
  }
}
