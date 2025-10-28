import 'package:flutter/material.dart';

class HomeAppBarHelper {
  static double responsiveFontSize(BuildContext context, double baseSize) {
    final screenSize = MediaQuery.of(context).size;
    final textScaler = MediaQuery.of(context).textScaler;
    final width = screenSize.width;

    double scaleFactor;
    if (width < 350) {
      scaleFactor = 0.9;
    } else if (width > 600) {
      scaleFactor = 1.1;
    } else {
      scaleFactor = 1.0;
    }

    return textScaler.scale(baseSize * scaleFactor);
  }
}
