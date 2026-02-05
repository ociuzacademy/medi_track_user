
class FeedbackListEmptyException implements Exception {
  FeedbackListEmptyException();

  @override
  String toString() =>
      'FeedbackListEmptyException: Feedback list is empty.';
}