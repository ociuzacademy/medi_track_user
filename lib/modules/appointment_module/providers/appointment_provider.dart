// appointment_provider.dart
import 'package:flutter/material.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/payment_module/view/payment_page.dart';

class AppointmentProvider with ChangeNotifier {
  // Form state
  String? _selectedDepartment;
  DateTime? _selectedDate;
  String? _selectedDoctorId;
  String _symptoms = '';

  // Mock data
  final List<Map<String, String>> _departments = [
    {'value': 'cardiology', 'label': 'Cardiology'},
    {'value': 'pediatrics', 'label': 'Pediatrics'},
    {'value': 'neurology', 'label': 'Neurology'},
    {'value': 'orthopedics', 'label': 'Orthopedics'},
  ];

  final List<Map<String, dynamic>> _doctors = [
    {
      'id': '1',
      'name': 'Dr. Emily Carter',
      'specialization': 'Cardiologist',
      'imageUrl':
          'https://lh3.googleusercontent.com/aida-public/AB6AXuDz0303K8agq8EP2FStKlWacHSb4EClPMZCe8KOOrVtVgFFDyUSCJotBjvQadefwNLNKEyBFAib099Ln1OCgFEtKPm-J34AE__CyAcfEIxZbx0a5NHPSEoAnHncu-quTO0ZHPxr_sxPjqQiDBoIJI16GNWWoMDEF7dOThIFHyNnNdcylJu9tfZ00fVrhWjyfz-xbKET_E6qURXRtVka8rfN987K1zRc0p00f2dsQxDvYuHXzLD4uj5P4yIU-U0NaSwvPE_83wMxRg5I',
    },
    {
      'id': '2',
      'name': 'Dr. Ben Adams',
      'specialization': 'Cardiologist',
      'imageUrl':
          'https://lh3.googleusercontent.com/aida-public/AB6AXuDJ-80Rsf2AT9QW8IUUIuHTYVAYBoc8wTxSBVnCE07f3dPaiketmvYiEjipZf9N5KbSdtM6eYR_OnLt92Oyk5rRrAHPB_eW30yHEt7wmI9_pDiuzQ4za1YLUPFchU4JVWzSfUqX9CzK2BLjZ8cnFQAeDD0UDqXthb3jbjIG4aPgxoyxAMOZ6RF3QyWg6w-sdpykbkD5oJupwdzcIv9a_SSIpy3m249QHTtrx67-rFkb46MVuCQX0RJ1KUiWj_1sy97uhcN6VvqGUnVt',
    },
    {
      'id': '3',
      'name': 'Dr. Sarah Chen',
      'specialization': 'Cardiologist',
      'imageUrl':
          'https://lh3.googleusercontent.com/aida-public/AB6AXuCtCoTCOkqgFkUOy0hEhoCi0odJB37s7Bbq-s3iE42kTJV_wZnRJzZTyFbmp3pqtpw1eEFqUCmrPACymP13t0Ljq0cxIhIrwGKakS4-P0e--_FmOM39fWhyG9jxHTRNT1yheymXzYsqJHF66Vtd9z_7uYSEbK_mpFxJzi_NkL5Q1J-ADA9PHWtq95qxLEUZ-5Wf3vP5VWQGaNfiOIaG3u8sPO_TD9jVCg72JmgV-uHK_5BaaNjAfztEp31fjlajnPuVS_RpnOTtMHmi',
    },
  ];

  // Patient information
  final String patientName = 'John Doe';
  final String patientId = 'MED123456';
  final int expectedToken = 24;

  // Getters
  String? get selectedDepartment => _selectedDepartment;
  DateTime? get selectedDate => _selectedDate;
  String? get selectedDoctorId => _selectedDoctorId;
  String get symptoms => _symptoms;
  List<Map<String, String>> get departments => _departments;
  List<Map<String, dynamic>> get doctors => _doctors;

  // Get selected doctor
  Map<String, dynamic>? get selectedDoctor {
    if (_selectedDoctorId == null) return null;
    return _doctors.firstWhere(
      (doctor) => doctor['id'] == _selectedDoctorId,
      orElse: () => {},
    );
  }

  // Setters
  void setSelectedDepartment(String? department) {
    _selectedDepartment = department;
    notifyListeners();
  }

  void setSelectedDate(DateTime? date) {
    _selectedDate = date;
    notifyListeners();
  }

  void setSelectedDoctor(String? doctorId) {
    _selectedDoctorId = doctorId;
    notifyListeners();
  }

  void setSymptoms(String symptoms) {
    _symptoms = symptoms;
    notifyListeners();
  }

  // Check if booking is valid
  bool get isBookingValid {
    return _selectedDepartment != null &&
        _selectedDate != null &&
        _selectedDoctorId != null &&
        _symptoms.isNotEmpty;
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
            'Your appointment with ${selectedDoctor!['name']} has been confirmed. Approximate token number: $expectedToken',
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
