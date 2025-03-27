import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:points_app/features/todo/presentation/providers/shared_pref_provider.dart';
import 'package:points_app/features/todo/presentation/providers/task_provider.dart';


final tStyle = TextStyle(fontSize: 20);


class AddTodoPage extends ConsumerWidget {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final tasker = ref.read(taskerProvider.notifier);
    final taskValue = ref.watch(taskerProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Add todo")),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(taskValue, style: tStyle,),
              TextField(
                onChanged: (val) => tasker.addTask(val),
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text("Добавить", style: tStyle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
