import '../../features/timer/presentation/routing/timer_routes_constants.dart';
import '../../features/home/presentation/routing/home_routes_constants.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationService {

    void navigateToTimer(BuildContext context) {
      context.goNamed(TimerRoutes.timer);
    }
  

    void navigateToHome(BuildContext context) {
      context.goNamed(HomeRoutes.home);
    }
  
}
