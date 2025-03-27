import 'package:points_app/features/todo/data/models/task_model.dart';
import 'package:points_app/features/todo/presentation/providers/shared_pref_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'task_provider.g.dart';

enum TaskStatus { notStarted, inProgress, completed }

@riverpod
class Tasker extends _$Tasker {
  @override
  void build() {
    return;
  }

  Future<void> saveTask(String val) async {
    final saver = ref.read(taskStorageProvider.notifier);
    saver.saveTask(val);
  }
}
