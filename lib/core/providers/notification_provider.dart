import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'notification_provider.g.dart';

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

@riverpod
void showNotification(Ref ref, String notifText, BuildContext context) {
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(notifText)));
}

@riverpod
class NotificationService extends _$NotificationService {
  @override
  void build() {
    return;
  }

  void showNotification(String notifText, BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(notifText)));
  }

  void showGlobalNotif(String notifText) {
    rootScaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(content: Text(notifText)),
    );
  }
}
