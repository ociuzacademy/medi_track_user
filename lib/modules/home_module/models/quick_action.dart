import 'package:flutter/material.dart';

class QuickAction {
  final IconData icon;
  final String title;
  final bool isPrimary;
  final VoidCallback onClick;

  const QuickAction({
    required this.icon,
    required this.title,
    required this.isPrimary,
    required this.onClick,
  });
}
