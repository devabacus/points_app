import 'package:flutter/material.dart';
import 'package:points_app/features/timer/presentation/providers/timer_providers.dart';
import 'package:points_app/features/timer/presentation/widgets/simple_button.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({
    super.key,
    required this.timerState,
    required this.timerController,
  });

  final TimerStateEnum timerState;
  final Timer timerController;

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
