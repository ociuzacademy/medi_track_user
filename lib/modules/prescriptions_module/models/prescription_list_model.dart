// To parse this JSON data, do
//
//     final prescriptionListModel = prescriptionListModelFromJson(jsonString);

import 'dart:convert';

PrescriptionListModel prescriptionListModelFromJson(String str) =>
    PrescriptionListModel.fromJson(json.decode(str));

String prescriptionListModelToJson(PrescriptionListModel data) =>
    json.encode(data.toJson());

class PrescriptionListModel {
  final bool success;
  final String userId;
  final List<Prescription> prescriptions;

  const PrescriptionListModel({
    required this.success,
    required this.userId,
    required this.prescriptions,
  });

  PrescriptionListModel copyWith({
    bool? success,
    String? userId,
    List<Prescription>? prescriptions,
  }) => PrescriptionListModel(
    success: success ?? this.success,
    userId: userId ?? this.userId,
    prescriptions: prescriptions ?? this.prescriptions,
  );

  factory PrescriptionListModel.fromJson(Map<String, dynamic> json) =>
      PrescriptionListModel(
        success: json['success'],
        userId: json['user_id'],
        prescriptions: List<Prescription>.from(
          json['prescriptions'].map((x) => Prescription.fromJson(x)),
        ),
      );

  Map<String, dynamic> toJson() => {
    'success': success,
    'user_id': userId,
    'prescriptions': List<dynamic>.from(prescriptions.map((x) => x.toJson())),
  };
}

class Prescription {
  final int id;
  final String doctorName;
  final String department;
  final DateTime appointmentDate;
  final int tokenNumber;
  final String symptoms;
  final String notes;
  final DateTime createdAt;
  final List<Medicine> medicines;

  const Prescription({
    required this.id,
    required this.doctorName,
    required this.department,
    required this.appointmentDate,
    required this.tokenNumber,
    required this.symptoms,
    required this.notes,
    required this.createdAt,
    required this.medicines,
  });

  Prescription copyWith({
    int? id,
    String? doctorName,
    String? department,
    DateTime? appointmentDate,
    int? tokenNumber,
    String? symptoms,
    String? notes,
    DateTime? createdAt,
    List<Medicine>? medicines,
  }) => Prescription(
    id: id ?? this.id,
    doctorName: doctorName ?? this.doctorName,
    department: department ?? this.department,
    appointmentDate: appointmentDate ?? this.appointmentDate,
    tokenNumber: tokenNumber ?? this.tokenNumber,
    symptoms: symptoms ?? this.symptoms,
    notes: notes ?? this.notes,
    createdAt: createdAt ?? this.createdAt,
    medicines: medicines ?? this.medicines,
  );

  factory Prescription.fromJson(Map<String, dynamic> json) => Prescription(
    id: json['id'],
    doctorName: json['doctor_name'],
    department: json['department'],
    appointmentDate: DateTime.parse(json['appointment_date']),
    tokenNumber: json['token_number'],
    symptoms: json['symptoms'],
    notes: json['notes'],
    createdAt: DateTime.parse(json['created_at']),
    medicines: List<Medicine>.from(
      json['medicines'].map((x) => Medicine.fromJson(x)),
    ),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'doctor_name': doctorName,
    'department': department,
    'appointment_date':
        "${appointmentDate.year.toString().padLeft(4, '0')}-${appointmentDate.month.toString().padLeft(2, '0')}-${appointmentDate.day.toString().padLeft(2, '0')}",
    'token_number': tokenNumber,
    'symptoms': symptoms,
    'notes': notes,
    'created_at': createdAt.toIso8601String(),
    'medicines': List<dynamic>.from(medicines.map((x) => x.toJson())),
  };
}

class Medicine {
  final String name;
  final String dosage;
  final int frequency;
  final List<String> timeOfDay;
  final String foodInstruction;
  final int numberOfDays;

  const Medicine({
    required this.name,
    required this.dosage,
    required this.frequency,
    required this.timeOfDay,
    required this.foodInstruction,
    required this.numberOfDays,
  });

  Medicine copyWith({
    String? name,
    String? dosage,
    int? frequency,
    List<String>? timeOfDay,
    String? foodInstruction,
    int? numberOfDays,
  }) => Medicine(
    name: name ?? this.name,
    dosage: dosage ?? this.dosage,
    frequency: frequency ?? this.frequency,
    timeOfDay: timeOfDay ?? this.timeOfDay,
    foodInstruction: foodInstruction ?? this.foodInstruction,
    numberOfDays: numberOfDays ?? this.numberOfDays,
  );

  factory Medicine.fromJson(Map<String, dynamic> json) => Medicine(
    name: json['name'],
    dosage: json['dosage'],
    frequency: json['frequency'],
    timeOfDay: List<String>.from(json['time_of_day'].map((x) => x)),
    foodInstruction: json['food_instruction'],
    numberOfDays: json['number_of_days'],
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'dosage': dosage,
    'frequency': frequency,
    'time_of_day': List<dynamic>.from(timeOfDay.map((x) => x)),
    'food_instruction': foodInstruction,
    'number_of_days': numberOfDays,
  };
}
