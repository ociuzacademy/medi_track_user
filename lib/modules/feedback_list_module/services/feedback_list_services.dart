import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:medi_track/core/constants/app_constants.dart';

import 'package:medi_track/core/constants/app_urls.dart';
<<<<<<< Updated upstream
import 'package:medi_track/modules/feedback_list_module/exception/feedback_list_empty_exception.dart';
=======
import 'package:medi_track/modules/feedback_list_module/exceptions/empty_feedback_list_exception.dart';
>>>>>>> Stashed changes
import 'package:medi_track/modules/feedback_list_module/models/user_feedback_list_model.dart';

class FeedbackListServices {
  static Future<UserFeedbackListModel> getUserFeedbackList({
    required String userId,
  }) async {
    try {
      final Map<String, dynamic> params = {'user_id': userId};
      final resp = await http
          .get(
            Uri.parse(AppUrls.feedbackListUrl).replace(queryParameters: params),
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
        final Map<String, dynamic> decoded = jsonDecode(resp.body);
        // {"message": "No feedback found for this user."}
        if (decoded['message'] == 'No feedback found for this user.') {
          throw EmptyFeedbackListException(message: 'No feedback found for this user.');
        } else {
          final UserFeedbackListModel response = UserFeedbackListModel.fromJson(
            decoded,
          );
          return response;
        }
      } else {
        if (resp.statusCode == 404) {
          throw FeedbackListEmptyException();
        } else {
          final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
          throw Exception(
            'Failed to get user feedback list: ${errorResponse['message'] ?? 'Unknown error'}',
          );
        }
      }
    } on TimeoutException catch (e) {
      debugPrint('FeedbackListServices: Request timeout - $e');
      throw Exception(
        'Request timeout. Please check your internet connection and try again.',
      );
    } on FeedbackListEmptyException {
      rethrow;
    } on SocketException {
      throw Exception('No Internet connection');
    } on HttpException {
      throw Exception('Server error');
    } on FormatException {
      throw Exception('Bad response format');
    } on EmptyFeedbackListException {
      rethrow;
    } catch (e) {
      throw Exception('Unexpected error: ${e.toString()}');
    }
  }
}
