// base_input_field.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseInputField extends StatefulWidget {
  final String label;
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Widget? suffixWidget;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final bool isDark;
  final TextInputType keyboardType;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final bool enabled;
  final bool autofocus;

  const BaseInputField({
    super.key,
    required this.label,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixWidget,
    this.controller,
    this.onChanged,
    this.validator,
    required this.isDark,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.inputFormatters,
    this.maxLines = 1,
    this.enabled = true,
    this.autofocus = false,
  });

  @override
  State<BaseInputField> createState() => _BaseInputFieldState();
}

class _BaseInputFieldState extends State<BaseInputField> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: widget.isDark ? Colors.white : const Color(0xFF111718),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: widget.maxLines! > 1 ? null : 56,
          decoration: BoxDecoration(
            color: widget.isDark ? const Color(0xFF1a2c3a) : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: widget.isDark
                  ? const Color(0xFF374151)
                  : const Color(0xFFe5e7eb),
            ),
          ),
          child: Row(
            children: [
              if (widget.prefixIcon != null) ...[
                Container(
                  width: 56,
                  height: 56,
                  alignment: Alignment.center,
                  child: Icon(
                    widget.prefixIcon,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
              Expanded(
                child: TextFormField(
                  controller: widget.controller,
                  focusNode: _focusNode,
                  onChanged: widget.onChanged,
                  validator: widget.validator,
                  keyboardType: widget.keyboardType,
                  obscureText: widget.obscureText,
                  inputFormatters: widget.inputFormatters,
                  maxLines: widget.maxLines,
                  enabled: widget.enabled,
                  autofocus: widget.autofocus,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: widget.isDark
                        ? Colors.white
                        : const Color(0xFF111718),
                  ),
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: GoogleFonts.inter(
                      color: const Color(0xFF9ca3af),
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: widget.prefixIcon == null ? 16 : 0,
                      vertical: widget.maxLines! > 1 ? 16 : 0,
                    ),
                  ),
                ),
              ),
              if (widget.suffixIcon != null) ...[
                Container(
                  width: 56,
                  height: 56,
                  alignment: Alignment.center,
                  child: Icon(
                    widget.suffixIcon,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
              if (widget.suffixWidget != null) widget.suffixWidget!,
            ],
          ),
        ),
      ],
    );
  }
}
