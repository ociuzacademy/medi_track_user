// pages/blood_request_notifications_page.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/blood_requests_notifications_module/models/blood_request_notification.dart';
import 'package:medi_track/modules/blood_requests_notifications_module/utils/blood_request_notifications_helper.dart'; // Fixed import
import 'package:medi_track/modules/blood_requests_notifications_module/widgets/confirmation_dialog.dart';
import 'package:medi_track/modules/blood_requests_notifications_module/widgets/no_requests_empty_state.dart';
import 'package:medi_track/modules/blood_requests_notifications_module/widgets/notification_card.dart';

class BloodRequestNotificationsPage extends StatefulWidget {
  const BloodRequestNotificationsPage({super.key});

  @override
  State<BloodRequestNotificationsPage> createState() =>
      _BloodRequestNotificationsPageState();

  static route() =>
      MaterialPageRoute(builder: (_) => const BloodRequestNotificationsPage());
}

class _BloodRequestNotificationsPageState
    extends State<BloodRequestNotificationsPage> {
  // Initialize ValueNotifiers first
  late final ValueNotifier<List<BloodRequestNotification>> _notifications;
  late final ValueNotifier<BloodRequestNotification?> _selectedNotification;
  late final ValueNotifier<bool> _showConfirmationDialog;
  late final BloodRequestNotificationsHelper
  _bloodRequestNotificationsHelper; // Fixed class name

  @override
  void initState() {
    // Initialize ValueNotifiers before the helper
    _notifications = ValueNotifier<List<BloodRequestNotification>>([
      BloodRequestNotification(
        id: '1',
        unitsNeeded: 3,
        postedDate: DateTime(2023, 10, 26, 10, 15),
        urgency: Urgency.high,
      ),
      BloodRequestNotification(
        id: '2',
        unitsNeeded: 1,
        postedDate: DateTime(2023, 10, 26, 8, 30),
        urgency: Urgency.medium,
      ),
      BloodRequestNotification(
        id: '3',
        unitsNeeded: 2,
        postedDate: DateTime(2023, 10, 25, 17, 45),
        urgency: Urgency.low,
      ),
    ]);
    _selectedNotification = ValueNotifier<BloodRequestNotification?>(null);
    _showConfirmationDialog = ValueNotifier<bool>(false);

    // Now initialize the helper with the already initialized ValueNotifiers
    _bloodRequestNotificationsHelper = BloodRequestNotificationsHelper(
      notifications: _notifications,
      selectedNotification: _selectedNotification,
      showConfirmationDialog: _showConfirmationDialog,
    );

    super.initState();
  }

  @override
  void dispose() {
    _notifications.dispose();
    _selectedNotification.dispose();
    _showConfirmationDialog.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Blood Request Notifications',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: isDark ? Colors.white : const Color(0xFF1C1B1F),
          ),
        ),
        backgroundColor: isDark
            ? const Color(0xFF221010)
            : const Color(0xFFF8F6F6),
        elevation: 0,
      ),
      backgroundColor: isDark
          ? const Color(0xFF221010)
          : const Color(0xFFF8F6F6),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mediaQuery.size.width * 0.04,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Subtitle
                Padding(
                  padding: const EdgeInsets.only(bottom: 12, top: 8),
                  child: Text(
                    'Requests matching your blood group',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: isDark
                          ? const Color(0xFF9CA3AF)
                          : const Color(0xFF49454F),
                    ),
                  ),
                ),
                // Notifications list or empty state
                Expanded(
                  child: ValueListenableBuilder<List<BloodRequestNotification>>(
                    valueListenable: _notifications,
                    builder: (context, notifications, _) {
                      if (notifications.isEmpty) {
                        return const NoRequestsEmptyState();
                      }
                      return ListView.builder(
                        itemCount: notifications.length,
                        itemBuilder: (context, index) {
                          final notification = notifications[index];
                          return NotificationCard(
                            notification: notification,
                            onAccept: () => _bloodRequestNotificationsHelper
                                .showDialog(notification),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // Confirmation Dialog overlay
          ValueListenableBuilder<bool>(
            valueListenable: _showConfirmationDialog,
            builder: (context, showDialog, _) {
              if (!showDialog) return const SizedBox.shrink();
              return Container(
                color: Colors.black.withValues(alpha: 0.5),
                alignment: Alignment.center,
                child: ConfirmationDialog(
                  onYes: _bloodRequestNotificationsHelper.acceptRequest,
                  onNo: _bloodRequestNotificationsHelper.hideDialog,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
