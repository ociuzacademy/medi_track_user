// payment_provider.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/payment_module/classes/card_payment_data.dart';
import 'package:medi_track/modules/payment_module/classes/u_p_i_payment_data.dart';
import 'package:medi_track/modules/payment_module/enums/payment_method.dart';

class PaymentProvider with ChangeNotifier {
  final int appointmentId;

  // Payment state
  PaymentMethod _selectedPaymentMethod = PaymentMethod.card;

  // Remove individual state variables and use controllers only
  final TextEditingController cardHolderNameController =
      TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  final TextEditingController upiIdController = TextEditingController();

  PaymentProvider({required this.appointmentId});

  // Getters
  PaymentMethod get selectedPaymentMethod => _selectedPaymentMethod;

  // Get text values from controllers
  String get cardHolderName => cardHolderNameController.text;
  String get cardNumber => cardNumberController.text;
  String get expiryDate => expiryDateController.text;
  String get cvv => cvvController.text;
  String get upiId => upiIdController.text;

  // Setters
  void setPaymentMethod(PaymentMethod method) {
    _selectedPaymentMethod = method;
    notifyListeners();
  }

  // Validation
  bool get isFormValid {
    if (_selectedPaymentMethod == PaymentMethod.card) {
      return cardHolderNameController.text.isNotEmpty &&
          cardNumberController.text.isNotEmpty &&
          expiryDateController.text.isNotEmpty &&
          cvvController.text.isNotEmpty;
    } else if (_selectedPaymentMethod == PaymentMethod.upi) {
      return upiIdController.text.isNotEmpty;
    }
    return false;
  }

  CardPaymentData? get cardPaymentData {
    if (_selectedPaymentMethod != PaymentMethod.card || !isFormValid) {
      return null;
    }
    return CardPaymentData(
      appointmentId: appointmentId,
      cardholderName: cardHolderName,
      cardNumber: cardNumber,
      expiryDate: expiryDate,
      cvv: cvv,
    );
  }

  UPIPaymentData? get upiPaymentData {
    if (_selectedPaymentMethod != PaymentMethod.upi || !isFormValid) {
      return null;
    }
    return UPIPaymentData(appointmentId: appointmentId, upiId: upiId);
  }

  @override
  void dispose() {
    cardHolderNameController.dispose();
    cardNumberController.dispose();
    expiryDateController.dispose();
    cvvController.dispose();
    upiIdController.dispose();
    super.dispose();
  }
}
