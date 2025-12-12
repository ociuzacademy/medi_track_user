// pages/blood_request_notifications_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/custom_error_widget.dart';
import 'package:medi_track/core/widgets/loaders/overlay_loader.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';

import 'package:medi_track/modules/blood_requests_notifications_module/utils/blood_request_notifications_helper.dart';
import 'package:medi_track/modules/blood_requests_notifications_module/widgets/confirmation_dialog.dart';
import 'package:medi_track/modules/blood_requests_notifications_module/widgets/no_requests_empty_state.dart';
import 'package:medi_track/modules/blood_requests_notifications_module/widgets/notification_card.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class BloodRequestNotificationsPage extends StatefulWidget {
  const BloodRequestNotificationsPage({super.key});

  @override
  State<BloodRequestNotificationsPage> createState() =>
      _BloodRequestNotificationsPageState();

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (_) => const BloodRequestNotificationsPage());
}

class _BloodRequestNotificationsPageState
    extends State<BloodRequestNotificationsPage> {
  // Initialize ValueNotifiers first
  final ValueNotifier<bool> _showConfirmationDialog = ValueNotifier(false);
  final ValueNotifier<int?> _selectedRequestId = ValueNotifier(null);

  late final BloodRequestNotificationsHelper _bloodRequestNotificationsHelper;

  @override
  void initState() {
    _bloodRequestNotificationsHelper = BloodRequestNotificationsHelper(
      context: context,
    );

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _bloodRequestNotificationsHelper.userBloodRequestsInit();
    });
  }

  @override
  void dispose() {
    _showConfirmationDialog.dispose();
    _selectedRequestId.dispose();
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
          style: GoogleFonts.lexend(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: isDark ? Colors.white : const Color(0xFF1C1B1F),
          ),
        ),
        backgroundColor: isDark
            ? const Color(0xFF0F1A2A)
            : const Color(0xFFF0F4F8),
        elevation: 0,
      ),
      backgroundColor: isDark
          ? const Color(0xFF0F1A2A)
          : const Color(0xFFF0F4F8),
      body: BlocListener<AcceptBloodRequestBloc, AcceptBloodRequestState>(
        listener: (context, state) {
          switch (state) {
            case AcceptBloodRequestLoading():
              OverlayLoader.show(context, message: 'Accepting request...');
              break;
            case AcceptBloodRequestSuccess(:final response):
              OverlayLoader.hide();
              CustomSnackbar.showSuccess(context, message: response.message);
              _bloodRequestNotificationsHelper.userBloodRequestsInit();
              break;
            case AcceptBloodRequestError(:final message):
              OverlayLoader.hide();
              CustomSnackbar.showError(context, message: message);
              break;
            default:
              OverlayLoader.hide();
              break;
          }
        },
        child: Stack(
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
                            ? AppColors.textTertiaryDark
                            : const Color(0xFF49454F),
                      ),
                    ),
                  ),
                  // Notifications list or empty state
                  Expanded(
                    child:
                        BlocBuilder<
                          UserBloodRequestsCubit,
                          UserBloodRequestsState
                        >(
                          builder: (context, state) {
                            return switch (state) {
                              UserBloodRequestsInitial() =>
                                const SizedBox.shrink(),
                              UserBloodRequestsLoading() => const Center(
                                child: CircularProgressIndicator(),
                              ),
                              UserBloodRequestsSuccess(:final bloodRequests) =>
                                ListView.builder(
                                  itemCount: bloodRequests.length,
                                  itemBuilder: (context, index) {
                                    final notification = bloodRequests[index];
                                    return NotificationCard(
                                      notification: notification,
                                      onAccept: () {
                                        _showConfirmationDialog.value = true;
                                        _selectedRequestId.value =
                                            notification.id;
                                      },
                                    );
                                  },
                                ),
                              UserBloodRequestsEmpty() =>
                                const NoRequestsEmptyState(),
                              UserBloodRequestsError(message: final message) =>
                                CustomErrorWidget(
                                  errorMessage: message,
                                  onRetry: _bloodRequestNotificationsHelper
                                      .userBloodRequestsInit,
                                  isDark: isDark,
                                ),
                            };
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
                return ValueListenableBuilder(
                  valueListenable: _selectedRequestId,
                  builder: (context, requestId, child) {
                    return Container(
                      color: Colors.black.withValues(alpha: 0.5),
                      alignment: Alignment.center,
                      child: ConfirmationDialog(
                        onYes: () {
                          if (requestId != null) {
                            _showConfirmationDialog.value = false;
                            _bloodRequestNotificationsHelper.acceptBloodRequest(
                              requestId: requestId,
                            );
                          }
                        },
                        onNo: () {
                          _showConfirmationDialog.value = false;
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
