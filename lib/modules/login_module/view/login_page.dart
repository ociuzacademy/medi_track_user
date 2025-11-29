import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/bloc/auth/auth_bloc.dart';
import 'package:medi_track/core/widgets/loaders/overlay_loader.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/home_module/view/home_page.dart';
import 'package:medi_track/modules/login_module/widgets/login_form.dart';
import 'package:medi_track/modules/login_module/widgets/login_logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (_) => const LoginPage());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          switch (state) {
            case AuthLoading _:
              OverlayLoader.show(context, message: 'User logging in...');
              break;
            case LoginSuccess(:final response):
              OverlayLoader.hide();
              CustomSnackbar.showSuccess(context, message: response.message);
              Navigator.pushReplacement(context, HomePage.route());
              break;
            case AuthError(:final errorMessage):
              OverlayLoader.hide();
              CustomSnackbar.showError(context, message: errorMessage);
              break;
            default:
              OverlayLoader.hide();
              break;
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(
                minHeight:
                    screenSize.height - MediaQuery.of(context).padding.vertical,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.06,
                vertical: screenSize.height * 0.02,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo Section
                  const LoginLogo(),

                  SizedBox(
                    height: screenSize.height * 0.04,
                  ), // Responsive spacing
                  // Login Form
                  const LoginForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
