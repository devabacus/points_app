import 'package:flutter/material.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add todo")),
      body: Center(child: Column(
        children: [
          TextField(decoration: InputDecoration(border: OutlineInputBorder()),),
          SizedBox(height: 20,),
          TextField(decoration: InputDecoration(border: OutlineInputBorder()),),
          SizedBox(height: 20,),
          Text("Add todo", style: TextStyle(fontSize: 30)),
        ],
      )),
    );
  }
}
