import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:points_app/features/timer/presentation/providers/counter_provider.dart';
import 'package:points_app/features/timer/presentation/providers/timer_providers.dart';
import 'package:points_app/features/timer/presentation/widgets/row_buttons.dart';
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
    final finishCounter = ref.watch(counterProvider);
    final counterController = ref.read(counterProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text("Timer"),
        backgroundColor: Colors.blue.shade300,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                finishCounter.when(
                  data: (val) => Text(val.toString(), style: style),
                  error: (_, __) => Text("Ошибка"),
                  loading: () => CircularProgressIndicator(),
                ),

                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    counterController.resetCounter();
                  },
                  child: Text("Сброс"),
                ),
              ],
            ),
            SizedBox(height: 30),
            DropdownMenu(
              dropdownMenuEntries: entries,
              initialSelection: 30,
              onSelected: (val) => timerController.setStartValue(val! * 60),
            ),
            SizedBox(height: 30),
            Text(TickStr.format(timer.remainingSeconds), style: style),
            RowButtons(
              timerState: timerState,
              timerController: timerController,
            ),
          ],
        ),
      ),
    );
  }
}
