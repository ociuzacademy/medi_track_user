// payment_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/loaders/overlay_loader.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/confirmation_module/view/confirmation_page.dart';
import 'package:medi_track/modules/payment_module/utils/payment_helper.dart';
import 'package:medi_track/modules/payment_module/widgets/payment_body.dart';
import 'package:provider/provider.dart';
import 'package:medi_track/modules/payment_module/providers/payment_provider.dart';

class PaymentPage extends StatefulWidget {
  final int appointmentId;
  const PaymentPage({super.key, required this.appointmentId});

  @override
  State<PaymentPage> createState() => _PaymentPageState();

  static Route route({required int appointmentId}) => MaterialPageRoute(
    builder: (_) => PaymentPage(appointmentId: appointmentId),
  );
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      PaymentHelper.setAppointmentDetails(context, widget.appointmentId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PaymentProvider(appointmentId: widget.appointmentId),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            'Complete Payment',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.surface,
          foregroundColor: Theme.of(context).colorScheme.onSurface,
          elevation: 0,
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF101f22)
            : const Color(0xFFf6f8f8),
        body: BlocListener<PaymentBloc, PaymentState>(
          listener: (context, state) {
            switch (state) {
              case PaymentLoading():
                OverlayLoader.show(context, message: 'Processing payment...');
                break;
              case PaymentError(:final errorMessage):
                OverlayLoader.hide();
                CustomSnackbar.showError(context, message: errorMessage);
                break;
              case CardPaymentSuccess(:final response):
                OverlayLoader.hide();
                CustomSnackbar.showSuccess(context, message: response.message);
                Navigator.pushReplacement(
                  context,
                  ConfirmationPage.route(appointmentId: response.appointmentId),
                );
                break;
              case UPIPaymentSuccess(:final response):
                OverlayLoader.hide();
                CustomSnackbar.showSuccess(context, message: response.message);
                Navigator.pushReplacement(
                  context,
                  ConfirmationPage.route(appointmentId: response.appointmentId),
                );
                break;
              default:
                OverlayLoader.hide();
                break;
            }
          },
          child: const PaymentBody(),
        ),
      ),
    );
  }
}
