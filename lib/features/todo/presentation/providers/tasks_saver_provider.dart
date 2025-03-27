import 'package:drift/drift.dart';
import 'package:points_app/core/database/database.dart';
import 'package:points_app/core/database/database_provider.dart';
import 'package:points_app/features/todo/data/datasources/local/task_table.dart';
import 'package:points_app/features/todo/data/models/task_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tasks_saver_provider.g.dart';

@riverpod
class TaskStorage extends _$TaskStorage {
  @override
  void build() async {}

  Future<int> saveTask(TaskModel task) async {
    final database = ref.read(appDatabaseProvider);
    return database.taskItems.insertOne(
      TaskItemsCompanion.insert(
        title: task.title,
        description: task.description,
        createAt: Value(task.onCreated)
      ),
    );
  }

  Future<List<TaskItem>> getAll() async {
    final database = ref.read(appDatabaseProvider);
    final allTasks = await database.select(database.taskItems).get();
    print(allTasks);
    return allTasks;
  }

  Stream<List<TaskItem>> watchAllTasks() {
    final database = ref.read(appDatabaseProvider);
    return database.select(database.taskItems).watch();
  }

  Future<void> clearAll() async {
    final database = ref.read(appDatabaseProvider);
    database.delete(database.taskItems).go();
  }
}


