// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

class RegisterDetails {
  final String username;
  final String email;
  final String phone;
  final String address;
  final String password;
  final String gender;
  final String bloodGroup;
  final DateTime birthDate;
  final File image;
  const RegisterDetails({
    required this.username,
    required this.email,
    required this.phone,
    required this.address,
    required this.password,
    required this.gender,
    required this.bloodGroup,
    required this.birthDate,
    required this.image,
  });
}
