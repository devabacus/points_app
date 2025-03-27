import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:points_app/core/providers/notification_provider.dart';
import 'package:points_app/features/todo/presentation/pages/add_todo_page.dart';
import 'package:points_app/features/todo/presentation/providers/shared_pref_provider.dart';

class SaveButton extends ConsumerWidget {
  final TextEditingController textController;
  final TaskStorage saveController;

  const SaveButton({
    required this.textController,
    required this.saveController,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notif = ref.read(notificationServiceProvider.notifier);

    return ElevatedButton(
      onPressed: () {
        if (textController.text.isNotEmpty) {
          saveController.saveTask(textController.text);

          notif.notify('Сохранено');
        } else {
          notif.notify('Введите название');
        }
      },
      child: Text("Добавить", style: tStyle),
    );
  }
}
