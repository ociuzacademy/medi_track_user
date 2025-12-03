// To parse this JSON data, do
//
//     final appointmentsModel = appointmentsModelFromJson(jsonString);

enum PaymentStatus {
  pending('pending'),
  completed('completed');

  final String value;
  const PaymentStatus(this.value);

  factory PaymentStatus.fromString(String name) {
    return PaymentStatus.values.firstWhere((e) => e.value == name);
  }

  String toJson() => value;
}
