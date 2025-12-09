import 'package:flutter/material.dart';

/// Centralized color palette for the MediTrack application.
/// Provides consistent colors for both light and dark themes.
class AppColors {
  AppColors._(); // Private constructor to prevent instantiation

  // ============================================================================
  // PRIMARY COLORS
  // ============================================================================

  /// Primary blue color used for main actions and branding
  static const Color primary = Color(0xFF007AFF);

  /// Alternative primary blue (used in theme seed)
  static const Color primaryAlt = Color(0xFF13a4ec);

  // ============================================================================
  // BACKGROUND COLORS
  // ============================================================================

  // Light Mode Backgrounds
  static const Color backgroundLight = Colors.white;
  static const Color surfaceLight = Color(0xFFF3F4F6);
  static const Color cardLight = Colors.white;

  // Dark Mode Backgrounds
  static const Color backgroundDark = Color(0xFF101a22);
  static const Color surfaceDark = Color(0xFF1A2A2D);
  static const Color cardDark = Color(0xFF1F2937);
  static const Color cardDarkAlt = Color(0xFF1A2A2D);

  // ============================================================================
  // BORDER COLORS
  // ============================================================================

  static const Color borderLight = Color(0xFFE5E7EB);
  static const Color borderDark = Color(0xFF374151);

  // ============================================================================
  // TEXT COLORS
  // ============================================================================

  // Light Mode Text
  static const Color textPrimaryLight = Color(0xFF111518);
  static const Color textSecondaryLight = Color(0xFF333333);
  static const Color textTertiaryLight = Color(0xFF6B7280);
  static const Color textMutedLight = Color(0xFF757575);

  // Dark Mode Text
  static const Color textPrimaryDark = Colors.white;
  static const Color textSecondaryDark = Color(0xFFE0E0E0);
  static const Color textTertiaryDark = Color(0xFF9CA3AF);
  static const Color textMutedDark = Color(0xFFBDBDBD);

  // ============================================================================
  // DIVIDER COLORS
  // ============================================================================

  static const Color dividerLight = Color(0xFFE5E7EB);
  static const Color dividerDark = Color(0xFF374151);

  // ============================================================================
  // STATUS COLORS
  // ============================================================================

  /// Success/Completed state color
  static const Color success = Color(0xFF34C759);

  /// Error/Cancel state color
  static const Color error = Color(0xFFFF3B30);

  /// Warning state color
  static const Color warning = Color(0xFFFFCC00);

  /// Info state color
  static const Color info = Color(0xFF007AFF);

  // ============================================================================
  // ICON BACKGROUND COLORS
  // ============================================================================

  static const Color iconBackgroundLight = Color(0xFFF3F4F6);
  static const Color iconBackgroundDark = Color(0xFF1F2937);

  // ============================================================================
  // HELPER METHODS
  // ============================================================================

  /// Returns the appropriate background color based on theme brightness
  static Color background(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? backgroundDark
        : backgroundLight;
  }

  /// Returns the appropriate surface color based on theme brightness
  static Color surface(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? surfaceDark
        : surfaceLight;
  }

  /// Returns the appropriate card color based on theme brightness
  static Color card(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? cardDark
        : cardLight;
  }

  /// Returns the appropriate border color based on theme brightness
  static Color border(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? borderDark
        : borderLight;
  }

  /// Returns the appropriate primary text color based on theme brightness
  static Color textPrimary(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? textPrimaryDark
        : textPrimaryLight;
  }

  /// Returns the appropriate secondary text color based on theme brightness
  static Color textSecondary(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? textSecondaryDark
        : textSecondaryLight;
  }

  /// Returns the appropriate tertiary text color based on theme brightness
  static Color textTertiary(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? textTertiaryDark
        : textTertiaryLight;
  }

  /// Returns the appropriate muted text color based on theme brightness
  static Color textMuted(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? textMutedDark
        : textMutedLight;
  }

  /// Returns the appropriate divider color based on theme brightness
  static Color divider(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? dividerDark
        : dividerLight;
  }

  /// Returns the appropriate icon background color based on theme brightness
  static Color iconBackground(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? iconBackgroundDark
        : iconBackgroundLight;
  }
}
