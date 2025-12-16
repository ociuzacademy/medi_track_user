import 'package:medi_track/core/enums/donation_type.dart';

class UpdateDonationRecordData {
  final DateTime date;
  final String location;
  final DonationType donationType;
  final int units;

  const UpdateDonationRecordData({
    required this.date,
    required this.location,
    required this.donationType,
    required this.units,
  });
}
