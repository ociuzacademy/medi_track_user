import 'package:flutter/material.dart';

class MediTrackLogo extends StatelessWidget {
  final double size;

  const MediTrackLogo({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      margin: EdgeInsets.only(bottom: size * 0.1), // Responsive margin
      child: Icon(
        Icons.medical_services_outlined,
        size: size,
        color: colorScheme.onPrimary,
        shadows: [
          Shadow(
            blurRadius: 6,
            color: Colors.black.withValues(alpha: 0.3),
            offset: const Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
