import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:points_app/core/database/database.dart';
import 'package:points_app/features/todo/data/models/task_model.dart';
import 'package:points_app/features/todo/presentation/providers/shared_pref_provider.dart';
import 'package:points_app/features/todo/presentation/providers/task_provider.dart';

class TodoListPage extends ConsumerStatefulWidget {
  const TodoListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TodoListPageState();
}

class _TodoListPageState extends ConsumerState<TodoListPage> {
  List<TaskItem> allTasks = [];
  bool isLoading = true;

  Future<void> getAllTask() async {
    try {
      final taskStorage = ref.read(taskStorageProvider.notifier);
      final tasks = await taskStorage.getAll();
      setState(() {
        allTasks = tasks;
        isLoading = false;
      });
    } catch (_) {
      isLoading = false;
    }
  }

  @override
  void initState() {
    getAllTask();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Все задачи")),
      body:
          isLoading
              ? Center(child: CircularProgressIndicator())
              : allTasks.isEmpty
              ? Center(child: Text("Нет задач"))
              : Center(
                child: ListView.builder(
                  itemCount: allTasks!.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(allTasks![0].toString()));
                  },
                ),
              ),
    );
  }
}
