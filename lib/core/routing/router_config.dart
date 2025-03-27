// ignore_for_file: unused_import
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mlogger/mlogger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../features/home/presentation/routing/home_router_config.dart';
import '../../features/home/presentation/routing/home_routes_constants.dart';
import '../../features/timer/presentation/routing/timer_router_config.dart';
import '../../features/timer/presentation/routing/timer_routes_constants.dart';
import '../../features/todo/presentation/routing/todo_router_config.dart';
import '../../features/todo/presentation/routing/todo_routes_constants.dart';
import './routes_constants.dart';

part 'router_config.g.dart';
 
@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    // observers: [TalkerRouteObserver(log.talker)],
    initialLocation: TodoRoutes.addTodoPath,
    routes: [
			...getTodoRoutes(),
			
			...getTimerRoutes(),
			...getHomeRoutes(),
        
    ]); 
}   

