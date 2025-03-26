
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/timer_navigation_service.dart';

part 'timer_navigation_provider.g.dart';

@riverpod
TimerNavigationService timerNavigationService(Ref ref) {
  return TimerNavigationService();
}

