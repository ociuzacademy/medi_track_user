class FeedbackDetailsHelper {
  // Helper method to calculate thumb position as double
  static double calculateThumbPosition(int value) {
    // Calculate position as percentage of total width, minus half thumb width for centering
    final percentage = value / 100;
    return (percentage * 100) -
        8; // Subtract half of thumb width (16/2) for centering
  }
}
