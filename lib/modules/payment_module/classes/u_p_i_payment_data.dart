class UPIPaymentData {
  final int appointmentId;
  final String upiId;

  const UPIPaymentData({required this.appointmentId, required this.upiId});

  Map<String, dynamic> toJson() => {
    'appointment_id': appointmentId,
    'upi_id': upiId,
  };
}
