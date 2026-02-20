import 'dart:io';

class ComplaintData {
  final String category;
  final String subject;
  final String description;
  final File image;

  ComplaintData({
    required this.category,
    required this.subject,
    required this.description,
    required this.image,
  });
}
