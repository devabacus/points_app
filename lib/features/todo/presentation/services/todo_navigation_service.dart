
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../routing/todo_routes_constants.dart';


class TodoNavigationService {

    void navigateToTodoList(BuildContext context) {
      context.goNamed(TodoRoutes.todoList);
    }
  

    void navigateToAddTodo(BuildContext context) {
      context.goNamed(TodoRoutes.addTodo);
    }
  

  void navigateToTodo(BuildContext context){
      context.goNamed(TodoRoutes.todo);
  }

}

