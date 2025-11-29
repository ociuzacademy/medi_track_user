// appointment_provider.dart
import 'package:flutter/material.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/appointment_booking_module/models/available_doctors_model.dart';
import 'package:medi_track/modules/appointment_booking_module/models/departments_model.dart';
import 'package:medi_track/modules/payment_module/view/payment_page.dart';

import 'package:medi_track/modules/appointment_booking_module/cubit/available_doctors/available_doctors_cubit.dart';

class AppointmentBookingProvider with ChangeNotifier {
  final AvailableDoctorsCubit availableDoctorsCubit;

  AppointmentBookingProvider({required this.availableDoctorsCubit});

  // Form state
  Department? _selectedDepartment;
  DateTime? _selectedDate;
  AvailableDoctor? _selectedDoctor;
  String _symptoms = '';

  List<Department>? _departments;

  List<AvailableDoctor>? _doctors;

  // Patient information
  final String patientName = 'John Doe';
  final String patientId = 'MED123456';
  final int expectedToken = 24;

  // Getters
  Department? get selectedDepartment => _selectedDepartment;
  DateTime? get selectedDate => _selectedDate;
  AvailableDoctor? get selectedDoctor => _selectedDoctor;
  String get symptoms => _symptoms;
  List<Department>? get departments => _departments;
  List<AvailableDoctor>? get doctors => _doctors;

  // Setters
  void setDepartments(List<Department>? departments) {
    _departments = departments;
    notifyListeners();
  }

  void setSelectedDepartment(Department? department) {
    _selectedDepartment = department;
    _checkAndFetchDoctors();
    notifyListeners();
  }

  void setSelectedDate(DateTime? date) {
    _selectedDate = date;
    _checkAndFetchDoctors();
    notifyListeners();
  }

  void _checkAndFetchDoctors() {
    if (_selectedDepartment != null && _selectedDate != null) {
      availableDoctorsCubit.getAvailableDoctors(
        departmentId: _selectedDepartment!.id,
        date: _selectedDate!,
      );
    }
  }

  void setDoctors(List<AvailableDoctor>? doctors) {
    _doctors = doctors;
    notifyListeners();
  }

  void setSelectedDoctor(AvailableDoctor? doctor) {
    _selectedDoctor = doctor;
    notifyListeners();
  }

  void setSymptoms(String symptoms) {
    _symptoms = symptoms;
    notifyListeners();
  }

  bool get isBookingValid {
    return _selectedDepartment != null &&
        _selectedDate != null &&
        _selectedDoctor != null;
  }

  // Confirm booking
  void confirmBooking(BuildContext context) {
    FocusScope.of(context).unfocus();
    if (isBookingValid) {
      // Show success dialog or navigate to confirmation page
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Booking Confirmed'),
          content: Text(
            'Your appointment with ${selectedDoctor!.name} has been confirmed. Approximate token number: $expectedToken${_symptoms.isNotEmpty ? '\n\nSymptoms: $_symptoms' : ''}',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                FocusScope.of(context).unfocus();
                CustomSnackbar.showSuccess(
                  context,
                  message: 'You have booked appointment successfully',
                );
                Navigator.pushReplacement(context, PaymentPage.route());
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else {
      CustomSnackbar.showError(
        context,
        message: 'Please fill all required fields',
      );
    }
  }
}
