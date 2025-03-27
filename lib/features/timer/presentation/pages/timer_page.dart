import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:points_app/features/timer/presentation/providers/counter_provider.dart';
import 'package:points_app/features/timer/presentation/providers/timer_providers.dart';
import 'package:points_app/features/timer/presentation/widgets/counter_display.dart';
import 'package:points_app/features/timer/presentation/widgets/timer_controls.dart';
import 'package:points_app/features/timer/presentation/widgets/timer_display.dart';
import 'package:points_app/features/timer/presentation/widgets/timer_setup.dart';

final List<DropdownMenuEntry<int>> entries =
    [30, 40, 50, 60]
        .map((item) => DropdownMenuEntry(value: item, label: item.toString()))
        .toList();

final style = TextStyle(fontSize: 30);

class TimerPage extends ConsumerWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerController = ref.read(timerControllerProvider.notifier);
    final timer = ref.watch(timerControllerProvider);
    final counter = ref.watch(counterProvider);
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
            CounterDisplay(
              counterController: counterController,
              counterValue: counter,
            ),
            SizedBox(height: 30),
            TimerSetup(timerController: timerController, entries: entries),
            SizedBox(height: 30),
            TimerDisplay(timer: timer),
            TimerControls(
              timerState: timer.status,
              timerController: timerController,
            ),
          ],
        ),
      ),
    );
  }
}
