class EmptyFeedbackListException implements Exception {
  final String message;

  EmptyFeedbackListException({required this.message});

   @override
  String toString() =>
      'EmptyFeedbackListException: $message';
}