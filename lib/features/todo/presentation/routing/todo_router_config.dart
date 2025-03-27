import '../../presentation/pages/add_todo_page.dart';
import '../../presentation/pages/todo_page.dart';
import 'todo_routes_constants.dart';

import 'dart:core';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


List<RouteBase> getTodoRoutes() {
  return [

    GoRoute(
      name: TodoRoutes.addTodo,
      path: TodoRoutes.addTodoPath,
      builder: (BuildContext context, state) {
        
      
      return AddTodoPage();
    
      }
  ),
  
  
    GoRoute(
      name: TodoRoutes.todo,
      path: TodoRoutes.todoPath,
      builder: (BuildContext context, state) => TodoPage(),
    ),
  ];
}
