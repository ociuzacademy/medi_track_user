import 'package:medi_track/modules/blood_requests_module/models/blood_request.dart';

class BloodRequestData {
  static final List<BloodRequest> bloodRequests = [
    BloodRequest(
      id: '1',
      patientName: 'Eleanor Vance',
      bloodGroup: 'A+',
      unitsRequired: 2,
      urgency: Urgency.high,
      requestTime: DateTime.now().subtract(const Duration(hours: 2)),
    ),
    BloodRequest(
      id: '2',
      patientName: 'Marcus Holloway',
      bloodGroup: 'O-',
      unitsRequired: 1,
      urgency: Urgency.medium,
      requestTime: DateTime.now().subtract(const Duration(hours: 4)),
    ),
    BloodRequest(
      id: '3',
      patientName: 'Javier Esposito',
      bloodGroup: 'B+',
      unitsRequired: 3,
      urgency: Urgency.low,
      requestTime: DateTime.now().subtract(const Duration(days: 1, hours: 3)),
    ),
  ];
}
