// widgets/success_snackbar.dart
import 'package:flutter/material.dart';

class SuccessSnackbar extends StatelessWidget {
  final VoidCallback onClose;

  const SuccessSnackbar({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.only(bottom: 100),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A1F2A) : const Color(0xFF2196F3),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
        border: isDark ? Border.all(color: const Color(0xFF2D3748)) : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle,
            color: isDark ? const Color(0xFF2196F3) : Colors.white,
            size: 20,
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              'Success! Donation record updated.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isDark ? Colors.white : Colors.white,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
