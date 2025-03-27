import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:points_app/features/timer/presentation/providers/counter_provider.dart';



class CounterDisplay extends StatelessWidget {
  final Counter counterController;
  final AsyncValue<int?> counterValue;

  const CounterDisplay({
    required this.counterController,
    required this.counterValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        counterValue.when(
          data: (val) => Text(val.toString(), style: TextStyle(fontSize: 30)),
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
    );
  }
}
