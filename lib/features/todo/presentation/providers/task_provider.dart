import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:points_app/core/database/database.dart';
import 'package:points_app/features/todo/data/models/task_model.dart';
import 'package:points_app/features/todo/presentation/providers/tasks_saver_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task_provider.g.dart';

enum TaskStatus { notStarted, inProgress, completed }

// @riverpod
// class Tasker extends _$Tasker {
//   @override
//   Future<List<TaskItem>> build() {
//       final taskStorage = ref.watch(taskStorageProvider.notifier); 
//       return taskStorage.getAll();
//   }
// }


@riverpod
Stream<List<TaskItem>> taskListStream(Ref ref) {
  final taskStorage = ref.watch(taskStorageProvider.notifier);
  return taskStorage.watchAllTasks();
}