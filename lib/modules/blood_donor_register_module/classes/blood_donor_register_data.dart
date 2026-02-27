class BloodDonorRegisterData {
  final String bloodGroup;
  final String location;
  final DateTime? lastDonationDate;
  final double weight;
  final bool underMedication;
  final bool hadRecentIllness;
  final String? illnessDetails;

  const BloodDonorRegisterData({
    required this.bloodGroup,
    required this.location,
    this.lastDonationDate,
    required this.weight,
    required this.underMedication,
    required this.hadRecentIllness,
    this.illnessDetails,
  });
}
