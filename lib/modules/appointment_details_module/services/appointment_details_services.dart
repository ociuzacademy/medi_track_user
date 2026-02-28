import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:medi_track/core/constants/app_constants.dart';

import 'package:medi_track/core/constants/app_urls.dart';
import 'package:medi_track/modules/appointment_details_module/model/accept_reschedule_response_module.dart';
import 'package:medi_track/modules/appointment_details_module/model/appointment_prescription_model.dart';
import 'package:medi_track/modules/appointment_details_module/model/late_marking_response_model.dart';
import 'package:medi_track/modules/appointment_details_module/model/reject_reschedule_response_model.dart';
import 'package:medi_track/modules/appointment_details_module/model/token_status_model.dart';

class AppointmentDetailsServices {
  static Future<TokenStatusModel> getTokenStatus({
    required int doctorId,
  }) async {
    try {
      final Map<String, dynamic> params = {'doctor_id': doctorId.toString()};
      final resp = await http
          .get(
            Uri.parse(AppUrls.tokenStatusUrl).replace(queryParameters: params),
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
        final TokenStatusModel response = TokenStatusModel.fromJson(decoded);
        return response;
      } else {
        final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
        throw Exception(
          'Failed to get token status: ${errorResponse['message'] ?? 'Unknown error'}',
        );
      }
    } on TimeoutException catch (e) {
      debugPrint('AppointmentDetailsServices: Request timeout - $e');
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

  static Future<AppointmentPrescriptionModel> getAppointmentPrescription({
    required int appointmentId,
  }) async {
    try {
      final Map<String, dynamic> params = {
        'appointment_id': appointmentId.toString(),
      };
      final resp = await http
          .get(
            Uri.parse(
              AppUrls.appointmentPrescriptionUrl,
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
        final AppointmentPrescriptionModel response =
            AppointmentPrescriptionModel.fromJson(decoded);
        return response;
      } else {
        final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
        throw Exception(
          'Failed to get appointment prescription: ${errorResponse['message'] ?? 'Unknown error'}',
        );
      }
    } on TimeoutException catch (e) {
      debugPrint('AppointmentDetailsServices: Request timeout - $e');
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

  static Future<AcceptRescheduleResponseModel> acceptReschedule({
    required int appointmentId,
    required String userId,
  }) async {
    try {
      Map<String, dynamic> params = {
        'appointment_id': appointmentId,
        'user_id': userId,
      };

      final resp = await http
          .patch(
            Uri.parse(AppUrls.acceptRescheduleUrl),
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

      if (resp.statusCode == 200) {
        final dynamic decoded = jsonDecode(resp.body);
        final AcceptRescheduleResponseModel response =
            AcceptRescheduleResponseModel.fromJson(decoded);
        return response;
      } else {
        final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
        throw Exception(
          'Failed to accept reschedule: ${errorResponse['message'] ?? 'Unknown error'}',
        );
      }
    } on TimeoutException catch (e) {
      debugPrint('AppointmentDetailsServices: Request timeout - $e');
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

  static Future<RejectRescheduleResponseModel> rejectReschedule({
    required int appointmentId,
    required String userId,
  }) async {
    try {
      Map<String, dynamic> params = {
        'appointment_id': appointmentId,
        'user_id': userId,
      };

      final resp = await http
          .patch(
            Uri.parse(AppUrls.rejectRescheduleUrl),
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

      if (resp.statusCode == 200) {
        final dynamic decoded = jsonDecode(resp.body);
        final RejectRescheduleResponseModel response =
            RejectRescheduleResponseModel.fromJson(decoded);
        return response;
      } else {
        final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
        throw Exception(
          'Failed to reject reschedule: ${errorResponse['message'] ?? 'Unknown error'}',
        );
      }
    } on TimeoutException catch (e) {
      debugPrint('AppointmentDetailsServices: Request timeout - $e');
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

  static Future<LateMarkingResponseModel> markLate({
    required int appointmentId,
  }) async {
    try {
      Map<String, dynamic> params = {'appointment_id': appointmentId};

      final resp = await http
          .post(
            Uri.parse(AppUrls.markLateUrl),
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

      if (resp.statusCode == 200) {
        final dynamic decoded = jsonDecode(resp.body);
        final LateMarkingResponseModel response =
            LateMarkingResponseModel.fromJson(decoded);
        return response;
      } else {
        final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
        throw Exception(
          'Failed to mark late: ${errorResponse['message'] ?? 'Unknown error'}',
        );
      }
    } on TimeoutException catch (e) {
      debugPrint('AppointmentDetailsServices: Request timeout - $e');
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
