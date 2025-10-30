// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BloodRequestHelper {
  final ValueNotifier<bool> isLoading;
  const BloodRequestHelper({required this.isLoading});

  Future<void> refreshData() async {
    isLoading.value = true;

    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));

    isLoading.value = false;
  }
}
