// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RescheduledAppointmentDetailRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isFirst;
  final bool isStrikethrough;
  final bool isHighlighted;
  const RescheduledAppointmentDetailRow({
    super.key,
    required this.label,
    required this.value,
    this.isFirst = false,
    this.isStrikethrough = false,
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          top: isFirst
              ? BorderSide.none
              : BorderSide(
                  color: isDark
                      ? const Color(0xFF37474F)
                      : const Color(0xFFdbe5e6),
                ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.lexend(
              fontSize: 14,
              color: isDark ? const Color(0xFF9E9E9E) : const Color(0xFF5f868c),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: GoogleFonts.lexend(
                fontSize: 14,
                fontWeight: isHighlighted ? FontWeight.bold : FontWeight.normal,
                color: isHighlighted
                    ? const Color(0xFF04798b)
                    : (isStrikethrough
                          ? (isDark
                                ? const Color(0xFF9E9E9E)
                                : const Color(0xFF9E9E9E))
                          : (isDark ? Colors.white : const Color(0xFF111718))),
                decoration: isStrikethrough
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
