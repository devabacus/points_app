import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:points_app/features/todo/data/models/task_model.dart';
import 'package:points_app/features/todo/presentation/providers/tasks_saver_provider.dart';
import 'package:points_app/features/todo/presentation/routing/todo_routes_constants.dart';
import 'package:points_app/features/todo/presentation/widgets/text_field.dart';

final tStyle = TextStyle(fontSize: 20);

class AddTodoPage extends ConsumerStatefulWidget {
  const AddTodoPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends ConsumerState<AddTodoPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descripController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descripController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final saveController = ref.read(taskStorageProvider.notifier);

    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(title: Text("Add todo")),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                getTextFiled("Название", titleController),
                SizedBox(height: 20),
                getTextFiled("Описание", descripController),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    final task = TaskModel(
                      title: titleController.text,
                      description: descripController.text,
                      isCompleted: false,
                    );
                    saveController.saveTask(task);
                  },
                  child: Text("Cохранить", style: tStyle),
                ),
                ElevatedButton(
                  onPressed: saveController.getAll,
                  child: Text("Получить все из базы"),
                ),
                ElevatedButton(
                  onPressed: () => context.goNamed(TodoRoutes.todoList),
                  child: Text("Показать все задачи", style: tStyle),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
