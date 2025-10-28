// utils/blood_request_notifications_helper.dart
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:medi_track/modules/blood_requests_notifications_module/models/blood_request_notification.dart';

class BloodRequestNotificationsHelper {
  final ValueNotifier<List<BloodRequestNotification>> notifications;
  final ValueNotifier<BloodRequestNotification?> selectedNotification;
  final ValueNotifier<bool> showConfirmationDialog;

  const BloodRequestNotificationsHelper({
    required this.notifications,
    required this.selectedNotification,
    required this.showConfirmationDialog,
  });

  void showDialog(BloodRequestNotification notification) {
    selectedNotification.value = notification;
    showConfirmationDialog.value = true;
  }

  void hideDialog() {
    showConfirmationDialog.value = false;
    selectedNotification.value = null;
  }

  void acceptRequest() {
    final selected = selectedNotification.value;
    if (selected != null) {
      // Handle acceptance logic here
      // e.g., call API or service
      // print('Accepted request: ${selected.id}');

      // Remove the accepted notification
      final updated = List<BloodRequestNotification>.from(notifications.value)
        ..removeWhere((n) => n.id == selected.id);
      notifications.value = updated;

      hideDialog();
    }
  }
}
