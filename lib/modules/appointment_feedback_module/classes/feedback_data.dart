class FeedbackData {
  final int appointmentId;
  final int starRating;
  final double doctorInteractionRating;
  final double hospitalServiceRating;
  final String comments;

  const FeedbackData({
    required this.appointmentId,
    required this.starRating,
    required this.doctorInteractionRating,
    required this.hospitalServiceRating,
    required this.comments,
  });

  Map<String, dynamic> toJson() {
    return {
      'appointment_id': appointmentId,
      'star_rating': starRating,
      'doctor_interaction_rating': doctorInteractionRating,
      'hospital_service_rating': hospitalServiceRating,
      'comments': comments,
    };
  }
}
