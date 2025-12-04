// To parse this JSON data, do
//
//     final appointmentPrescriptionModel = appointmentPrescriptionModelFromJson(jsonString);

import 'dart:convert';

AppointmentPrescriptionModel appointmentPrescriptionModelFromJson(String str) =>
    AppointmentPrescriptionModel.fromJson(json.decode(str));

String appointmentPrescriptionModelToJson(AppointmentPrescriptionModel data) =>
    json.encode(data.toJson());

class AppointmentPrescriptionModel {
  final bool success;
  final bool completed;
  final String message;
  final Appointment appointment;
  final Prescription prescription;

  const AppointmentPrescriptionModel({
    required this.success,
    required this.completed,
    required this.message,
    required this.appointment,
    required this.prescription,
  });

  AppointmentPrescriptionModel copyWith({
    bool? success,
    bool? completed,
    String? message,
    Appointment? appointment,
    Prescription? prescription,
  }) => AppointmentPrescriptionModel(
    success: success ?? this.success,
    completed: completed ?? this.completed,
    message: message ?? this.message,
    appointment: appointment ?? this.appointment,
    prescription: prescription ?? this.prescription,
  );

  factory AppointmentPrescriptionModel.fromJson(Map<String, dynamic> json) =>
      AppointmentPrescriptionModel(
        success: json['success'],
        completed: json['completed'],
        message: json['message'],
        appointment: Appointment.fromJson(json['appointment']),
        prescription: Prescription.fromJson(json['prescription']),
      );

  Map<String, dynamic> toJson() => {
    'success': success,
    'completed': completed,
    'message': message,
    'appointment': appointment.toJson(),
    'prescription': prescription.toJson(),
  };
}

class Appointment {
  final int id;
  final String doctorName;
  final String userName;
  final DateTime date;
  final String status;

  const Appointment({
    required this.id,
    required this.doctorName,
    required this.userName,
    required this.date,
    required this.status,
  });

  Appointment copyWith({
    int? id,
    String? doctorName,
    String? userName,
    DateTime? date,
    String? status,
  }) => Appointment(
    id: id ?? this.id,
    doctorName: doctorName ?? this.doctorName,
    userName: userName ?? this.userName,
    date: date ?? this.date,
    status: status ?? this.status,
  );

  factory Appointment.fromJson(Map<String, dynamic> json) => Appointment(
    id: json['id'],
    doctorName: json['doctor_name'],
    userName: json['user_name'],
    date: DateTime.parse(json['date']),
    status: json['status'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'doctor_name': doctorName,
    'user_name': userName,
    'date':
        "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    'status': status,
  };
}

class Prescription {
  final String symptoms;
  final String notes;
  final DateTime createdAt;
  final List<Medicine> medicines;

  const Prescription({
    required this.symptoms,
    required this.notes,
    required this.createdAt,
    required this.medicines,
  });

  Prescription copyWith({
    String? symptoms,
    String? notes,
    DateTime? createdAt,
    List<Medicine>? medicines,
  }) => Prescription(
    symptoms: symptoms ?? this.symptoms,
    notes: notes ?? this.notes,
    createdAt: createdAt ?? this.createdAt,
    medicines: medicines ?? this.medicines,
  );

  factory Prescription.fromJson(Map<String, dynamic> json) => Prescription(
    symptoms: json['symptoms'],
    notes: json['notes'],
    createdAt: DateTime.parse(json['created_at']),
    medicines: List<Medicine>.from(
      json['medicines'].map((x) => Medicine.fromJson(x)),
    ),
  );

  Map<String, dynamic> toJson() => {
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
