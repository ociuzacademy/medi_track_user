import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:medi_track/core/constants/app_constants.dart';

import 'package:medi_track/core/constants/app_urls.dart';
import 'package:medi_track/modules/blood_requests_notifications_module/models/accept_blood_request_response_model.dart';

class BloodRequestsNotificationsServices {
  static Future<AcceptBloodRequestResponseModel> acceptBloodRequest({
    required int donorId,
    required int requestId,
  }) async {
    try {
      Map<String, dynamic> params = {
        'donor_id': donorId,
        'request_id': requestId,
      };

      final resp = await http
          .post(
            Uri.parse(AppUrls.donorAcceptBloodUrl),
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
        final AcceptBloodRequestResponseModel response =
            AcceptBloodRequestResponseModel.fromJson(decoded);
        return response;
      } else {
        final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
        throw Exception(
          'Failed to accept blood request: ${errorResponse['message'] ?? 'Unknown error'}',
        );
      }
    } on TimeoutException catch (e) {
      debugPrint('BloodRequestsNotificationsServices: Request timeout - $e');
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
