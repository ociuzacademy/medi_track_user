// To parse this JSON data, do
//
//     final prescriptionDetailsModel = prescriptionDetailsModelFromJson(jsonString);

import 'dart:convert';

PrescriptionDetailsModel prescriptionDetailsModelFromJson(String str) =>
    PrescriptionDetailsModel.fromJson(json.decode(str));

String prescriptionDetailsModelToJson(PrescriptionDetailsModel data) =>
    json.encode(data.toJson());

class PrescriptionDetailsModel {
  final int prescriptionId;
  final String symptoms;
  final String notes;
  final Appointment appointment;
  final Doctor doctor;
  final Patient patient;
  final List<Medicine> medicines;

  const PrescriptionDetailsModel({
    required this.prescriptionId,
    required this.symptoms,
    required this.notes,
    required this.appointment,
    required this.doctor,
    required this.patient,
    required this.medicines,
  });

  PrescriptionDetailsModel copyWith({
    int? prescriptionId,
    String? symptoms,
    String? notes,
    Appointment? appointment,
    Doctor? doctor,
    Patient? patient,
    List<Medicine>? medicines,
  }) => PrescriptionDetailsModel(
    prescriptionId: prescriptionId ?? this.prescriptionId,
    symptoms: symptoms ?? this.symptoms,
    notes: notes ?? this.notes,
    appointment: appointment ?? this.appointment,
    doctor: doctor ?? this.doctor,
    patient: patient ?? this.patient,
    medicines: medicines ?? this.medicines,
  );

  factory PrescriptionDetailsModel.fromJson(Map<String, dynamic> json) =>
      PrescriptionDetailsModel(
        prescriptionId: json['prescription_id'],
        symptoms: json['symptoms'],
        notes: json['notes'],
        appointment: Appointment.fromJson(json['appointment']),
        doctor: Doctor.fromJson(json['doctor']),
        patient: Patient.fromJson(json['patient']),
        medicines: List<Medicine>.from(
          json['medicines'].map((x) => Medicine.fromJson(x)),
        ),
      );

  Map<String, dynamic> toJson() => {
    'prescription_id': prescriptionId,
    'symptoms': symptoms,
    'notes': notes,
    'appointment': appointment.toJson(),
    'doctor': doctor.toJson(),
    'patient': patient.toJson(),
    'medicines': List<dynamic>.from(medicines.map((x) => x.toJson())),
  };
}

class Appointment {
  final int id;
  final DateTime date;
  final String status;
  final int tokenNumber;

  const Appointment({
    required this.id,
    required this.date,
    required this.status,
    required this.tokenNumber,
  });

  Appointment copyWith({
    int? id,
    DateTime? date,
    String? status,
    int? tokenNumber,
  }) => Appointment(
    id: id ?? this.id,
    date: date ?? this.date,
    status: status ?? this.status,
    tokenNumber: tokenNumber ?? this.tokenNumber,
  );

  factory Appointment.fromJson(Map<String, dynamic> json) => Appointment(
    id: json['id'],
    date: DateTime.parse(json['date']),
    status: json['status'],
    tokenNumber: json['token_number'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'date':
        "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    'status': status,
    'token_number': tokenNumber,
  };
}

class Doctor {
  final int id;
  final String name;
  final String email;
  final String specialization;

  const Doctor({
    required this.id,
    required this.name,
    required this.email,
    required this.specialization,
  });

  Doctor copyWith({
    int? id,
    String? name,
    String? email,
    String? specialization,
  }) => Doctor(
    id: id ?? this.id,
    name: name ?? this.name,
    email: email ?? this.email,
    specialization: specialization ?? this.specialization,
  );

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
    id: json['id'],
    name: json['name'],
    email: json['email'],
    specialization: json['specialization'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    'specialization': specialization,
  };
}

class Medicine {
  final int id;
  final String name;
  final String dosage;
  final int frequency;
  final List<String> timeOfDay;
  final String foodInstruction;
  final int numberOfDays;

  const Medicine({
    required this.id,
    required this.name,
    required this.dosage,
    required this.frequency,
    required this.timeOfDay,
    required this.foodInstruction,
    required this.numberOfDays,
  });

  Medicine copyWith({
    int? id,
    String? name,
    String? dosage,
    int? frequency,
    List<String>? timeOfDay,
    String? foodInstruction,
    int? numberOfDays,
  }) => Medicine(
    id: id ?? this.id,
    name: name ?? this.name,
    dosage: dosage ?? this.dosage,
    frequency: frequency ?? this.frequency,
    timeOfDay: timeOfDay ?? this.timeOfDay,
    foodInstruction: foodInstruction ?? this.foodInstruction,
    numberOfDays: numberOfDays ?? this.numberOfDays,
  );

  factory Medicine.fromJson(Map<String, dynamic> json) => Medicine(
    id: json['id'],
    name: json['name'],
    dosage: json['dosage'],
    frequency: json['frequency'],
    timeOfDay: List<String>.from(json['time_of_day'].map((x) => x)),
    foodInstruction: json['food_instruction'],
    numberOfDays: json['number_of_days'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'dosage': dosage,
    'frequency': frequency,
    'time_of_day': List<dynamic>.from(timeOfDay.map((x) => x)),
    'food_instruction': foodInstruction,
    'number_of_days': numberOfDays,
  };
}

class Patient {
  final int id;
  final String username;
  final String email;
  final String phoneNumber;

  const Patient({
    required this.id,
    required this.username,
    required this.email,
    required this.phoneNumber,
  });

  Patient copyWith({
    int? id,
    String? username,
    String? email,
    String? phoneNumber,
  }) => Patient(
    id: id ?? this.id,
    username: username ?? this.username,
    email: email ?? this.email,
    phoneNumber: phoneNumber ?? this.phoneNumber,
  );

  factory Patient.fromJson(Map<String, dynamic> json) => Patient(
    id: json['id'],
    username: json['username'],
    email: json['email'],
    phoneNumber: json['phone_number'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'username': username,
    'email': email,
    'phone_number': phoneNumber,
  };
}
