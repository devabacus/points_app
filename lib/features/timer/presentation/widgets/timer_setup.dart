import 'package:flutter/material.dart';
import 'package:points_app/features/timer/presentation/providers/timer_providers.dart';

class TimerSetup extends StatelessWidget {

  final TimerController timerController;
  final List<DropdownMenuEntry<int>> entries;

  const TimerSetup({super.key, required this.timerController, required this.entries});

  
  @override
  Widget build(BuildContext context) {
    return DropdownMenu(dropdownMenuEntries: entries, initialSelection: 30, onSelected: (val) => timerController.setStartValue(val! * 60),);
  }
}