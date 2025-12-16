// models/donation_form_data.dart

enum DonationType {
  wholeBlood('Whole Blood'),
  plasma('Plasma'),
  platelets('Platelets'),
  redCells('Red Cells');

  final String displayName;

  const DonationType(this.displayName);

  String toJson() => displayName;

  factory DonationType.fromJson(String displayName) {
    return DonationType.values.firstWhere(
      (element) => element.displayName == displayName,
      orElse: () => DonationType.redCells,
    );
  }
}
