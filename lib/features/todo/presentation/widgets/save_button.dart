import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:points_app/core/providers/notification_provider.dart';
import 'package:points_app/features/todo/data/models/task_model.dart';
import 'package:points_app/features/todo/presentation/pages/add_todo_page.dart';
import 'package:points_app/features/todo/presentation/providers/shared_pref_provider.dart';
import 'package:points_app/features/todo/presentation/providers/task_provider.dart';

class SaveButton extends ConsumerWidget {
  final TaskModel taskModel;
  final TaskStorage saveController;

  const SaveButton({
    required this.taskModel,
    required this.saveController,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notif = ref.read(notificationServiceProvider.notifier);

    return ElevatedButton(
      onPressed: () {
        if (taskModel.title.isNotEmpty) {
          saveController.saveTask(taskModel.toJson().toString());

          notif.notify('Сохранено');
        } else {
          notif.notify('Введите название');
        }
      },
      child: Text("Добавить", style: tStyle),
    );
  }
}
