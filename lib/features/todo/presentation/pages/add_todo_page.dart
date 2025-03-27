import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:points_app/features/todo/presentation/providers/shared_pref_provider.dart';
import 'package:points_app/features/todo/presentation/providers/task_provider.dart';
import 'package:points_app/features/todo/presentation/widgets/save_button.dart';

final tStyle = TextStyle(fontSize: 20);

class AddTodoPage extends ConsumerStatefulWidget {
  const AddTodoPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends ConsumerState<AddTodoPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final saveController = ref.read(taskStorageProvider.notifier);
    final task = ref.watch(taskerProvider);
    final taskController = ref.read(taskerProvider.notifier);


    return Scaffold(
      appBar: AppBar(title: Text("Add todo")),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(task.toString(), style: tStyle,),
              SizedBox(height: 20),
              TextField(
                onChanged: (val) {
                    taskController.titleUpdate(val);
                },
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              // TextField(
              //   onChanged: (val) {},
              //   decoration: InputDecoration(border: OutlineInputBorder()),
              // ),
              SizedBox(height: 20),
              SaveButton(
                textController: _controller,
                saveController: saveController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
