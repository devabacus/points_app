import 'package:points_app/features/todo/data/models/task_model.dart';
import 'package:points_app/features/todo/presentation/providers/shared_pref_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task_provider.g.dart';

enum TaskStatus { notStarted, inProgress, completed }

@riverpod
class Tasker extends _$Tasker {
  @override
  TaskModel? build() {
    return TaskModel(
      title: 'title',
      description: 'description',
      isCompleted: false,
    );
  }

}
