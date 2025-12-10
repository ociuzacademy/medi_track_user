import 'package:flutter/material.dart';

class HeaderCardIcon extends StatelessWidget {
  const HeaderCardIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: const Color(0xFFD9534F).withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.bloodtype, color: Color(0xFFD9534F), size: 32),
    );
  }
}
