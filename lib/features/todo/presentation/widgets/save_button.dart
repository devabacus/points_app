import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:points_app/core/providers/notification_provider.dart';
import 'package:points_app/features/todo/presentation/pages/add_todo_page.dart';
import 'package:points_app/features/todo/presentation/providers/shared_pref_provider.dart';

class SaveButton extends ConsumerWidget {
  TextEditingController taskName;
  TaskStorage saveController;

  SaveButton({required this.taskName, required this.saveController, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final name = ref.read(notification.notifier)

    final notif = ref.read(notificationServiceProvider.notifier);

    return ElevatedButton(
      onPressed: () {
        if (taskName.text.isNotEmpty) {
          notif.showGlobalNotif('Сохранено');
        } else {
          notif.showGlobalNotif('Введите название');
        }
      },
      child: Text("Добавить", style: tStyle),
    );
  }
}



