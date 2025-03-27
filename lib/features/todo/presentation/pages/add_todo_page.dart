import 'package:flutter/material.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add todo")),
      body: Center(child: Text("Add todo", style: TextStyle(fontSize: 30))),
    );
  }
}
