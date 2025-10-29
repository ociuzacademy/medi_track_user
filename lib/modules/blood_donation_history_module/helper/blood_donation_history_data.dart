import 'package:medi_track/modules/blood_donation_history_module/models/blood_donation_history.dart';

class BloodDonationHistoryData {
  static final List<BloodDonationHistory> donations = [
    BloodDonationHistory(
      id: '1',
      donationDate: DateTime(2023, 10, 15),
      donationType: 'Whole Blood',
      unitsDonated: '1 Unit',
      status: DonationStatus.successful,
    ),
    BloodDonationHistory(
      id: '2',
      donationDate: DateTime(2023, 7, 20),
      donationType: 'Plasma',
      unitsDonated: '450ml',
      status: DonationStatus.successful,
    ),
    BloodDonationHistory(
      id: '3',
      donationDate: DateTime(2023, 4, 5),
      donationType: 'Platelets',
      unitsDonated: '1 Unit',
      status: DonationStatus.pending,
    ),
  ];
}
