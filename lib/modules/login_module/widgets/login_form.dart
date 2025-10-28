import 'package:flutter/material.dart';
import 'package:medi_track/modules/login_module/utils/login_form_helper.dart';
import 'package:medi_track/modules/login_module/widgets/email_field.dart';
import 'package:medi_track/modules/login_module/widgets/login_button.dart';
import 'package:medi_track/modules/login_module/widgets/password_field.dart';
import 'package:medi_track/modules/login_module/widgets/register_link.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late final LoginFormHelper _loginFormHelper;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loginFormHelper = LoginFormHelper(
      context: context,
      formKey: _formKey,
      emailController: _emailController,
      passwordController: _passwordController,
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;

    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Email Field
          EmailField(
            emailController: _emailController,
            colorScheme: colorScheme,
          ),

          SizedBox(height: screenSize.height * 0.02), // Responsive spacing
          // Password Field
          PasswordField(
            passwordController: _passwordController,
            colorScheme: colorScheme,
          ),

          SizedBox(height: screenSize.height * 0.04), // Responsive spacing
          // Login Button
          LoginButton(
            colorScheme: colorScheme,
            submitForm: _loginFormHelper.submitForm,
          ),

          SizedBox(height: screenSize.height * 0.03), // Responsive spacing
          // Register Link
          RegisterLink(
            colorScheme: colorScheme,
            navigateToRegister: _loginFormHelper.navigateToRegister,
          ),
        ],
      ),
    );
  }
}
