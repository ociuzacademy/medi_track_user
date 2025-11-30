class CardPaymentData {
  final int appointmentId;
  final String cardholderName;
  final String cardNumber;
  final String expiryDate;
  final String cvv;

  const CardPaymentData({
    required this.appointmentId,
    required this.cardholderName,
    required this.cardNumber,
    required this.expiryDate,
    required this.cvv,
  });

  Map<String, dynamic> toJson() => {
    'appointment_id': appointmentId,
    'cardholder_name': cardholderName,
    'card_number': cardNumber,
    'expiry_date': expiryDate,
    'cvv': cvv,
  };
}
