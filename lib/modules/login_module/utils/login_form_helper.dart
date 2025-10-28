// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/bloc/auth/auth_bloc.dart';
import 'package:medi_track/modules/register_module/view/register_page.dart';

class LoginFormHelper {
  final BuildContext context;
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  const LoginFormHelper({
    required this.context,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  void submitForm() {
    FocusScope.of(context).unfocus();
    if (formKey.currentState!.validate()) {
      final String email = emailController.text.trim();
      final String password = passwordController.text.trim();

      final AuthBloc authBloc = context.read<AuthBloc>();
      authBloc.add(AuthEvent.userLoggingIn(email, password));
    }
  }

  void navigateToRegister() {
    // Navigate to registration screen
    debugPrint('Navigate to registration');
    Navigator.pushReplacement(context, RegisterPage.route());
  }
}
