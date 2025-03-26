import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:points_app/features/timer/presentation/providers/timer_providers.dart';
import 'package:points_app/features/timer/utils/tick_value_handle.dart';

final List<DropdownMenuEntry<int>> entries =
    [30, 40, 50, 60]
        .map((item) => DropdownMenuEntry(value: item, label: item.toString()))
        .toList();

final style = TextStyle(fontSize: 30);

class TimerPage extends ConsumerWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerController = ref.read(timerProvider.notifier);
    final timer = ref.watch(timerProvider);
    final timerState = ref.watch(timerStateProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Timer")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownMenu(
              dropdownMenuEntries: entries,
              initialSelection: 30,
              onSelected: (val) => timerController.setStartValue(val! * 60),
            ),
            SizedBox(height: 30),
            Text(TickStr.format(timer), style: style),
            Row(
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
                TimerStateEnum.reset => [
                  simpleButton(timerController.startTimer, "Старт"),
                ],
                TimerStateEnum.finish => [
                  simpleButton(timerController.resetTimer, "Сброс"),
                ],
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget simpleButton(void Function() onPressed, String btnText) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(btnText, style: TextStyle(fontSize: 20)),
  );
}
