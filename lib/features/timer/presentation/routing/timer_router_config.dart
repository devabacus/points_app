
import '../../presentation/pages/timer_page.dart';
import 'timer_routes_constants.dart';

import 'dart:core';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


List<RouteBase> getTimerRoutes() {
  return [
    GoRoute(
      name: TimerRoutes.timer,
      path: TimerRoutes.timerPath,
      builder: (BuildContext context, state) => TimerPage(),
    ),
  ];
}
