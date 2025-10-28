import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:medi_track/core/constants/app_constants.dart';
import 'package:medi_track/core/constants/app_urls.dart';
import 'package:medi_track/modules/register_module/classes/register_details.dart';
import 'package:medi_track/modules/register_module/models/user_register_response_model.dart';

class RegisterServices {
  static Future<UserRegisterResponseModel> userRegister({
    required RegisterDetails registerDetails,
  }) async {
    try {
      var request = http.MultipartRequest(
        "POST",
        Uri.parse(AppUrls.userRegisterUrl),
      );

      request.fields['username'] = registerDetails.username;
      request.fields['email'] = registerDetails.email;
      request.fields['password'] = registerDetails.password;
      request.fields['address'] = registerDetails.address;
      request.fields['phone'] = registerDetails.phone;
      request.fields['gender'] = registerDetails.gender;
      request.fields['blood_group'] = registerDetails.bloodGroup;
      final DateFormat formatter = DateFormat('yyyy-MM-dd');
      final String formattedDate = formatter.format(registerDetails.birthDate);
      request.fields['birth_date'] = formattedDate;

      var imageStream = http.ByteStream(registerDetails.image.openRead());
      var imageLength = await registerDetails.image.length();
      var multipartFile = http.MultipartFile(
        'image',
        imageStream,
        imageLength,
        filename: registerDetails.image.path.split("/").last,
      );
      request.files.add(multipartFile);

      // Send request
      final resp = await request.send().timeout(
        Duration(minutes: AppConstants.requestTimeoutminutes),
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
        final UserRegisterResponseModel response =
            UserRegisterResponseModel.fromJson(decoded);
        return response;
      } else {
        final Map<String, dynamic> errorResponse = jsonDecode(responseBody);
        throw Exception(errorResponse['message'] ?? 'Unknown error');
      }
    } on TimeoutException catch (e) {
      debugPrint('RegisterServices: Request timeout - $e');
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
