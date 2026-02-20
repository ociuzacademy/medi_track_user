import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:medi_track/core/constants/app_constants.dart';
import 'package:medi_track/core/constants/app_urls.dart';
import 'package:medi_track/modules/submit_complaint_module/data/complaint_data.dart';
import 'package:medi_track/modules/submit_complaint_module/model/submit_complaint_response_model.dart';

class SubmitComplaintService {
  static Future<SubmitComplaintResponseModel> submitComplaint({
    required String userId,
    required ComplaintData complaintData,
  }) async {
    try {
      var request = http.MultipartRequest(
        'POST',
        Uri.parse(AppUrls.submitComplaintsUrl),
      );

      request.fields['user'] = userId;
      request.fields['category'] = complaintData.category;
      request.fields['subject'] = complaintData.subject;
      request.fields['description'] = complaintData.description;

      var imageStream = http.ByteStream(complaintData.image.openRead());
      var imageLength = await complaintData.image.length();
      var multipartFile = http.MultipartFile(
        'image',
        imageStream,
        imageLength,
        filename: complaintData.image.path.split('/').last,
      );
      request.files.add(multipartFile);

      // Send request
      final resp = await request.send().timeout(
        const Duration(minutes: AppConstants.requestTimeoutminutes),
        onTimeout: () {
          throw TimeoutException(
            'Request timed out after ${AppConstants.requestTimeoutminutes} minute.',
          );
        },
      );

      // Convert the response stream to a string
      final responseBody = await resp.stream.bytesToString();

      if (resp.statusCode == 201) {
        final dynamic decoded = jsonDecode(responseBody);
        final SubmitComplaintResponseModel response =
            SubmitComplaintResponseModel.fromJson(decoded);
        return response;
      } else {
        final Map<String, dynamic> errorResponse = jsonDecode(responseBody);
        throw Exception(errorResponse['error'] ?? 'Unknown error');
      }
    } on TimeoutException catch (e) {
      debugPrint('SubmitComplaintService: Request timeout - $e');
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
