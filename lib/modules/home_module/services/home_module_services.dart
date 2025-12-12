import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:medi_track/core/constants/app_constants.dart';

import 'package:medi_track/core/constants/app_urls.dart';
import 'package:medi_track/modules/home_module/models/upcoming_appointments_model.dart';

class HomeModuleServices {
  static Future<UpcomingAppointmentsModel> getUpcomingAppointments({
    required String userId,
  }) async {
    try {
      final Map<String, dynamic> params = {'user_id': userId};
      final resp = await http
          .get(
            Uri.parse(
              AppUrls.upcomingAppointmentsUrl,
            ).replace(queryParameters: params),
            headers: <String, String>{
              'Content-Type': 'application/x-www-form-urlencoded',
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

      if (resp.statusCode == 200) {
        final dynamic decoded = jsonDecode(resp.body);
        final UpcomingAppointmentsModel response =
            UpcomingAppointmentsModel.fromJson(decoded);
        return response;
      } else {
        final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
        throw Exception(
          'Failed to get upcoming appointments: ${errorResponse['message'] ?? 'Unknown error'}',
        );
      }
    } on TimeoutException catch (e) {
      debugPrint('HomeModuleServices: Request timeout - $e');
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
