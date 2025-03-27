import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:points_app/core/database/database.dart';
import 'package:points_app/features/todo/data/models/task_model.dart';
import 'package:points_app/features/todo/presentation/pages/add_todo_page.dart';
import 'package:points_app/features/todo/presentation/providers/tasks_saver_provider.dart';
import 'package:points_app/features/todo/presentation/providers/task_provider.dart';
import 'package:points_app/features/todo/presentation/routing/todo_routes_constants.dart';

class TodoListPage extends ConsumerWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(taskListStreamProvider);
    final taskStorage = ref.read(taskStorageProvider.notifier);


    return Scaffold(
      appBar: AppBar(title: Text("Task List")),
      body: Column(
        children: [
          tasks.when(
            data:
                (tasks) => Expanded(
                  child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      return ListTile(title: Text(tasks[index].toString()));
                    },
                  ),
                ),
            error: (error, stack) {
                print(error);

                return Text("Error: ${error.toString()}");
                
            },
            loading: () => CircularProgressIndicator(),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => context.goNamed(TodoRoutes.addTodo),
                child: Text("Добавить задачу", style: tStyle),
              ),

              ElevatedButton(
                onPressed: () {
                  // TODO 
                    taskStorage.clearAll();


                },
                child: Text("Очистить базу данных", style: tStyle),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
