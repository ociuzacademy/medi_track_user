class CancelData {
  final int appointmentId;
  final String reason;

  const CancelData({required this.appointmentId, required this.reason});

  Map<String, dynamic> toJson() {
    return {'appointment_id': appointmentId, 'reason': reason};
  }
}
