import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:medi_track/core/constants/app_constants.dart';

import 'package:medi_track/core/constants/app_urls.dart';
import 'package:medi_track/modules/update_donation_record_module/classes/update_donation_record_data.dart';
import 'package:medi_track/modules/update_donation_record_module/models/add_donation_record_response_model.dart';

class UpdateDonationRecordServices {
  static Future<AddDonationRecordResponseModel> updateDonationRecord({
    required int donorId,
    required UpdateDonationRecordData data,
  }) async {
    try {
      final DateFormat dateFormat = DateFormat('yyyy-MM-dd');
      Map<String, dynamic> params = {
        'donor_id': donorId,
        'donation_type': data.donationType.displayName,
        'date': dateFormat.format(data.date),
        'location': data.location,
        'units': data.units,
      };

      final resp = await http
          .post(
            Uri.parse(AppUrls.addDonationRecordUrl),
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
        final AddDonationRecordResponseModel response =
            AddDonationRecordResponseModel.fromJson(decoded);
        return response;
      } else {
        final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
        throw Exception(
          'Failed to update donation record: ${errorResponse['message'] ?? 'Unknown error'}',
        );
      }
    } on TimeoutException catch (e) {
      debugPrint('UpdateDonationRecordServices: Request timeout - $e');
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
