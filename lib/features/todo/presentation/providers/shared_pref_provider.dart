import 'package:points_app/features/todo/data/models/task_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_pref_provider.g.dart';

@riverpod
class TaskStorage extends _$TaskStorage {
  @override
  Future<String> build() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString('lastTask') ?? "Last task";
  }

  Future<void> saveTask(String task) async {
    final pref = await SharedPreferences.getInstance();

    pref.setString('lastTask', task);
    state = AsyncData(task);
  }

  Future<String> getLastTask() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString('lastTask') ?? "";
  }
}
