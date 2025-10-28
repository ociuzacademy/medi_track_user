import 'package:flutter/material.dart';

class BottomNavigationHelper {
  static double responsiveFontSize(BuildContext context, double baseSize) {
    final screenSize = MediaQuery.of(context).size;
    final textScaler = MediaQuery.of(context).textScaler;
    final width = screenSize.width;

    double scaleFactor;
    if (width < 350) {
      scaleFactor = 0.8;
    } else if (width > 600) {
      scaleFactor = 1.2;
    } else {
      scaleFactor = 1.0;
    }

    return textScaler.scale(baseSize * scaleFactor);
  }
}
