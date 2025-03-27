import 'package:flutter/material.dart';
import 'package:points_app/features/timer/presentation/providers/timer_providers.dart';
import 'package:points_app/features/timer/utils/widgets/simple_button.dart';

class TimerControls extends StatelessWidget {
  const TimerControls({
    super.key,
    required this.timerState,
    required this.timerController,
  });

  final TimerStateEnum timerState;
  final TimerController timerController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: switch (timerState) {
        TimerStateEnum.running || TimerStateEnum.resume => [
          simpleButton(timerController.pauseTimer, "Пауза"),
          SizedBox(width: 20),
          simpleButton(timerController.resetTimer, "Сброс"),
        ],
        TimerStateEnum.paused => [
          simpleButton(timerController.resumeTimer, "Возобновить"),
          SizedBox(width: 20),
          simpleButton(timerController.resetTimer, "Сброс"),
        ],
        TimerStateEnum.reset || TimerStateEnum.finish => [
          simpleButton(timerController.startTimer, "Старт"),
        ],
      },
    );
  }
}
