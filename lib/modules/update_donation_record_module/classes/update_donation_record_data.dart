import 'package:medi_track/modules/update_donation_record_module/enum/donation_type.dart';

class UpdateDonationRecordData {
  final DateTime date;
  final String location;
  final DonationType donationType;
  final double units;

  const UpdateDonationRecordData({
    required this.date,
    required this.location,
    required this.donationType,
    required this.units,
  });
}
