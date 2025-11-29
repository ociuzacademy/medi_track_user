import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_booking_module/view/appointment_booking_page.dart';
import 'package:medi_track/modules/user_appointments_module/view/user_appointments_page.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/view/blood_donor_dashboard_page.dart';
import 'package:medi_track/modules/feedback_list_module/view/feedback_list_page.dart';
import 'package:medi_track/modules/home_module/models/quick_action.dart';
import 'package:medi_track/modules/prescriptions_module/view/prescriptions_page.dart';

class QuickActionsGridData {
  static List<QuickAction> getQuickActions(BuildContext context) {
    return [
      QuickAction(
        icon: Icons.calendar_today,
        title: 'Book Doctor',
        isPrimary: true,
        onClick: () {
          Navigator.push(context, AppointmentBookingPage.route());
        },
      ),
      QuickAction(
        icon: Icons.receipt_long,
        title: 'Prescriptions',
        isPrimary: true,
        onClick: () {
          Navigator.push(context, PrescriptionsPage.route());
        },
      ),
      QuickAction(
        icon: Icons.bloodtype,
        title: 'Blood Donate',
        isPrimary: true,
        onClick: () {
          Navigator.push(context, BloodDonorDashboardPage.route());
        },
      ),
      QuickAction(
        icon: Icons.feedback,
        title: 'Feedbacks',
        isPrimary: false,
        onClick: () {
          Navigator.push(context, FeedbackListPage.route());
        },
      ),
      QuickAction(
        icon: Icons.event_note,
        title: 'Appointments',
        isPrimary: false,
        onClick: () {
          Navigator.push(context, UserAppointmentsPage.route());
        },
      ),
    ];
  }
}
