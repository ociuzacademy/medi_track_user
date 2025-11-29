// To parse this JSON data, do
//
//     final departmentsModel = departmentsModelFromJson(jsonString);

import 'dart:convert';

DepartmentsModel departmentsModelFromJson(String str) =>
    DepartmentsModel.fromJson(json.decode(str));

String departmentsModelToJson(DepartmentsModel data) =>
    json.encode(data.toJson());

class DepartmentsModel {
  final List<Department> departments;

  const DepartmentsModel({required this.departments});

  DepartmentsModel copyWith({List<Department>? departments}) =>
      DepartmentsModel(departments: departments ?? this.departments);

  factory DepartmentsModel.fromJson(Map<String, dynamic> json) =>
      DepartmentsModel(
        departments: List<Department>.from(
          json['departments'].map((x) => Department.fromJson(x)),
        ),
      );

  Map<String, dynamic> toJson() => {
    'departments': List<dynamic>.from(departments.map((x) => x.toJson())),
  };
}

class Department {
  final int id;
  final String department;

  const Department({required this.id, required this.department});

  Department copyWith({int? id, String? department}) =>
      Department(id: id ?? this.id, department: department ?? this.department);

  factory Department.fromJson(Map<String, dynamic> json) =>
      Department(id: json['id'], department: json['department']);

  Map<String, dynamic> toJson() => {'id': id, 'department': department};
}
