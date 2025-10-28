import 'package:flutter/material.dart';

class QuickActionsGridHelper {
  static int getCrossAxisCount(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 350) return 2;
    if (width > 600) return 4;
    return 3;
  }

  static double getChildAspectRatio(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 350) return 1.1;
    if (width > 600) return 0.8;
    return 0.9;
  }

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
