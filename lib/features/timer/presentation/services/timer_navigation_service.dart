
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../routing/timer_routes_constants.dart';


class TimerNavigationService {
  
  void navigateToTimer(BuildContext context){
      context.goNamed(TimerRoutes.timer);
  }

}

