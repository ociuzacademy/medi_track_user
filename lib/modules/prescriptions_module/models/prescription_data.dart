// prescriptions_page.dart

class PrescriptionData {
  final String doctorName;
  final String specialty;
  final String date;
  final String token;
  final String description;
  final String status;

  const PrescriptionData({
    required this.doctorName,
    required this.specialty,
    required this.date,
    required this.token,
    required this.description,
    required this.status,
  });
}
