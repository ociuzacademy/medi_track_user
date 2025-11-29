// appointment_page.dart

import 'package:flutter/material.dart';

class HeaderDescriptionWidget extends StatelessWidget {
  const HeaderDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        'Secure your token for a consultation',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
        ),
      ),
    );
  }
}
