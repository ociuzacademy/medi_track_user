// appointment_provider.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_booking_module/classes/appointment_data.dart';
import 'package:medi_track/modules/appointment_booking_module/models/available_doctors_model.dart';
import 'package:medi_track/modules/appointment_booking_module/models/departments_model.dart';

import 'package:medi_track/modules/appointment_booking_module/cubit/available_doctors/available_doctors_cubit.dart';
import 'package:medi_track/modules/appointment_booking_module/cubit/expected_token/expected_token_cubit.dart';

class AppointmentBookingProvider with ChangeNotifier {
  final AvailableDoctorsCubit availableDoctorsCubit;
  final ExpectedTokenCubit expectedTokenCubit;

  AppointmentBookingProvider({
    required this.availableDoctorsCubit,
    required this.expectedTokenCubit,
  });

  // Form state
  Department? _selectedDepartment;
  DateTime? _selectedDate;
  AvailableDoctor? _selectedDoctor;
  final TextEditingController symptomsController = TextEditingController();

  // Getters
  Department? get selectedDepartment => _selectedDepartment;
  DateTime? get selectedDate => _selectedDate;
  AvailableDoctor? get selectedDoctor => _selectedDoctor;
  String get symptoms => symptomsController.text;

  // Setters

  void setSelectedDepartment(Department? department) {
    _selectedDepartment = department;
    _checkAndFetchDoctors();
    notifyListeners();
  }

  void setSelectedDate(DateTime? date) {
    _selectedDate = date;
    _checkAndFetchDoctors();
    _checkAndFetchExpectedToken();
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

  void _checkAndFetchExpectedToken() {
    if (_selectedDoctor != null && _selectedDate != null) {
      expectedTokenCubit.getExpectedToken(
        doctorId: _selectedDoctor!.id,
        date: _selectedDate!,
      );
    }
  }

  void setSelectedDoctor(AvailableDoctor? doctor) {
    _selectedDoctor = doctor;
    _checkAndFetchExpectedToken();
    notifyListeners();
  }

  bool get shouldGetExpectedToken {
    return _selectedDoctor != null && _selectedDate != null;
  }

  bool get isBookingValid {
    return _selectedDepartment != null &&
        _selectedDate != null &&
        _selectedDoctor != null;
  }

  AppointmentData? get appointmentData {
    if (_selectedDoctor == null || _selectedDate == null) {
      return null;
    }

    return AppointmentData(
      doctorId: _selectedDoctor!.id,
      date: _selectedDate!,
      symptoms: symptomsController.text,
    );
  }

  @override
  void dispose() {
    symptomsController.dispose();
    super.dispose();
  }
}
