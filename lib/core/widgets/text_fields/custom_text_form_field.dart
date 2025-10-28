import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final ColorScheme colorScheme;
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final Iterable<String>? autofillHints;
  final String? Function(String?)? validator;
  final bool isPassword;
  final bool showVisibilityToggle;
  final int? minLines;
  final int? maxLines;
  final bool enabled;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.colorScheme,
    required this.labelText,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.autofillHints,
    this.validator,
    this.isPassword = false,
    this.showVisibilityToggle = true,
    this.minLines,
    this.maxLines = 1,
    this.enabled = true,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool shouldShowVisibilityToggle =
        widget.isPassword && widget.showVisibilityToggle;

    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      autofillHints: widget.autofillHints,
      obscureText: widget.isPassword ? _obscureText : false,
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      enabled: widget.enabled,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        filled: true,
        fillColor: widget.colorScheme.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: widget.colorScheme.outline.withValues(alpha: 0.3),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: widget.colorScheme.outline.withValues(alpha: 0.3),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: widget.colorScheme.primary, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: widget.colorScheme.outline.withValues(alpha: 0.1),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
            width: 2,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        suffixIcon: shouldShowVisibilityToggle
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: widget.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
                onPressed: _togglePasswordVisibility,
                splashRadius: 20,
              )
            : null,
      ),
      style: GoogleFonts.inter(
        color: widget.colorScheme.onSurface,
        fontSize: 16,
      ),
      validator: widget.validator,
    );
  }
}
