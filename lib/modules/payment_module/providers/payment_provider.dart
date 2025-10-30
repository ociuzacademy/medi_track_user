// payment_provider.dart
import 'package:flutter/material.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/confirmation_module/view/confirmation_page.dart';

class PaymentProvider with ChangeNotifier {
  // Payment state
  PaymentMethod _selectedPaymentMethod = PaymentMethod.card;

  // Remove individual state variables and use controllers only
  final TextEditingController cardHolderNameController =
      TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  final TextEditingController upiIdController = TextEditingController();

  // Payment details
  final String appointmentDetails = 'Cardiology Consultation';
  final double totalAmount = 100.00;

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

  // Process payment
  void processPayment(BuildContext context) {
    FocusScope.of(context).unfocus();
    if (!isFormValid) {
      CustomSnackbar.showError(
        context,
        message: _selectedPaymentMethod == PaymentMethod.card
            ? 'Please fill all card details'
            : 'Please enter UPI ID',
      );

      return;
    }

    // Simulate payment processing
    CustomSnackbar.showSuccess(
      context,
      message: 'Payment of ₹$totalAmount processed successfully!',
    );

    // Navigate to confirmation page
    Future.delayed(const Duration(seconds: 2), () {
      if (!context.mounted) return;
      Navigator.of(context).pushReplacement(ConfirmationPage.route());
    });
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

enum PaymentMethod { card, upi }
