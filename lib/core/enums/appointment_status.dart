// To parse this JSON data, do
//
//     final appointmentsModel = appointmentsModelFromJson(jsonString);

enum AppointmentStatus {
  upcoming('upcoming'),
  completed('completed'),
  cancelled('cancelled'),
  rescheduled('rescheduled');

  final String value;
  const AppointmentStatus(this.value);

  factory AppointmentStatus.fromString(String name) {
    return AppointmentStatus.values.firstWhere((e) => e.value == name);
  }

  String toJson() => value;
}
