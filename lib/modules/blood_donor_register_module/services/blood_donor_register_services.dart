import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:medi_track/core/constants/app_constants.dart';

import 'package:medi_track/core/constants/app_urls.dart';
import 'package:medi_track/modules/blood_donor_register_module/classes/blood_donor_register_data.dart';
import 'package:medi_track/modules/blood_donor_register_module/models/blood_donor_register_response_model.dart';

class BloodDonorRegisterServices {
  static Future<BloodDonorRegisterResponseModel> bloodDonorRegister({
    required String userId,
    required BloodDonorRegisterData bloodDonorRegisterData,
  }) async {
    try {
      final DateFormat dateFormat = DateFormat('yyyy-MM-dd');
      Map<String, dynamic> params = {
        'user_id': userId,
        'blood_group': bloodDonorRegisterData.bloodGroup,
        'location': bloodDonorRegisterData.location,
        'last_donation_date': bloodDonorRegisterData.lastDonationDate != null
            ? dateFormat.format(bloodDonorRegisterData.lastDonationDate!)
            : null,
        'weight': bloodDonorRegisterData.weight,
        'under_medication': bloodDonorRegisterData.underMedication,
        'had_recent_illness': bloodDonorRegisterData.hadRecentIllness,
        'illness_details': bloodDonorRegisterData.illnessDetails,
      };

      final resp = await http
          .post(
            Uri.parse(AppUrls.bloodDonorsUrl),
            body: jsonEncode(params),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=utf-8',
            },
          )
          .timeout(
            const Duration(seconds: AppConstants.requestTimeoutSeconds),
            onTimeout: () {
              throw TimeoutException(
                'Request timed out after ${AppConstants.requestTimeoutSeconds} seconds',
              );
            },
          );

      if (resp.statusCode == 201) {
        final dynamic decoded = jsonDecode(resp.body);
        final BloodDonorRegisterResponseModel response =
            BloodDonorRegisterResponseModel.fromJson(decoded);
        return response;
      } else {
        final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
        throw Exception(
          'Failed to register blood donor: ${errorResponse['message'] ?? 'Unknown error'}',
        );
      }
    } on TimeoutException catch (e) {
      debugPrint('BloodDonorRegisterServices: Request timeout - $e');
      throw Exception(
        'Request timeout. Please check your internet connection and try again.',
      );
    } on SocketException {
      throw Exception('No Internet connection');
    } on HttpException {
      throw Exception('Server error');
    } on FormatException {
      throw Exception('Bad response format');
    } catch (e) {
      throw Exception('Unexpected error: ${e.toString()}');
    }
  }
}
