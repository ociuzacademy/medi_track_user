import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/widgets/loaders/overlay_loader.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/login_module/view/login_page.dart';
import 'package:medi_track/modules/register_module/bloc/user_register_bloc.dart';
import 'package:medi_track/modules/register_module/utils/register_helper.dart';
import 'package:provider/provider.dart';

import 'package:medi_track/modules/register_module/providers/register_provider.dart';
import 'package:medi_track/modules/register_module/widgets/divider_section.dart';
import 'package:medi_track/modules/register_module/widgets/footer_section.dart';
import 'package:medi_track/modules/register_module/widgets/header_section.dart';
import 'package:medi_track/modules/register_module/widgets/image_picker_section.dart';
import 'package:medi_track/modules/register_module/widgets/login_section.dart';
import 'package:medi_track/modules/register_module/widgets/register_button.dart';
import 'package:medi_track/modules/register_module/widgets/register_form_section.dart';
import 'package:medi_track/modules/register_module/widgets/terms_section.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (_) => const RegisterPage());
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  // register_page.dart - Update the build method
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterProvider(),
      child: Scaffold(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF101a22)
            : const Color(0xFFF8F9FA),
        body: BlocListener<UserRegisterBloc, UserRegisterState>(
          listener: (context, state) {
            switch (state) {
              case UserRegisterInitial _:
              case UserRegisterLoading _:
                OverlayLoader.show(
                  context,
                  message: 'Registering the user details...',
                );
                break;
              case UserRegisterError(:final errorMessage):
                OverlayLoader.hide();
                CustomSnackbar.showError(context, message: errorMessage);
                break;
              case UserRegisterSuccess(:final response):
                OverlayLoader.hide();
                CustomSnackbar.showSuccess(context, message: response.message);
                Navigator.pushReplacement(context, LoginPage.route());
                break;
            }
          },
          child: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight:
                      MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.vertical,
                ),
                child: Consumer<RegisterProvider>(
                  builder: (context, registerProvider, child) {
                    final theme = Theme.of(context);
                    final isDark = theme.brightness == Brightness.dark;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Header Section
                        HeaderSection(theme: theme),

                        // Image Picker Section
                        const ImagePickerSection(),

                        // Form Section
                        RegisterFormSection(formKey: _formKey),

                        // Terms and Conditions
                        TermsSection(
                          theme: theme,
                          agreeToTerms: registerProvider.agreeToTerms,
                          onClickingCheckbox: (value) {
                            registerProvider.setAgreeToTerms(value ?? false);
                          },
                        ),

                        // Register Button
                        RegisterButton(
                          theme: theme,
                          onRegister: () =>
                              RegisterHelper.register(_formKey, context),
                        ),

                        // Divider with Login Text
                        DividerSection(isDarkMode: isDark, theme: theme),

                        // Login Link
                        LoginSection(theme: theme),

                        // Footer
                        FooterSection(isDarkMode: isDark, theme: theme),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
