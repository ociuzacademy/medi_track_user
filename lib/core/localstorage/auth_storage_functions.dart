import 'package:medi_track/core/localstorage/auth_storage_keys.dart';
import 'package:medi_track/core/exceptions/auth_storage_exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthStorageFunctions {
  static Future<void> login(String userId, int donorId) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await Future.wait([
        prefs.setString(AuthStorageKeys.userId, userId),
        prefs.setBool(AuthStorageKeys.isLoggedIn, true),
        prefs.setInt(AuthStorageKeys.donorId, donorId),
      ]);
    } catch (e) {
      throw LoginStorageException('Unable to store user credentials', e);
    }
  }

  static Future<void> logout() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await Future.wait([
        prefs.remove(AuthStorageKeys.userId),
        prefs.setBool(AuthStorageKeys.isLoggedIn, false),
        prefs.remove(AuthStorageKeys.donorId),
      ]);
    } catch (e) {
      throw LogoutStorageException('Unable to clear user credentials', e);
    }
  }

  static Future<void> registerDonor(int donorId) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt(AuthStorageKeys.donorId, donorId);
    } catch (e) {
      throw LogoutStorageException('Unable to store donor ID', e);
    }
  }

  static Future<String> getUserId() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userId = prefs.getString(AuthStorageKeys.userId);
      return userId ?? '';
    } catch (e) {
      throw GetUserIdStorageException('Unable to retrieve user ID', e);
    }
  }

  static Future<bool> getLoginStatus() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final bool? isLoggedIn = prefs.getBool(AuthStorageKeys.isLoggedIn);
      return isLoggedIn ?? false;
    } catch (e) {
      throw GetLoginStatusStorageException(
        'Unable to retrieve login status',
        e,
      );
    }
  }

  static Future<int> getDonorId() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final int? donorId = prefs.getInt(AuthStorageKeys.donorId);
      return donorId ?? 0;
    } catch (e) {
      throw GetDonorIdStorageException('Unable to retrieve donor ID', e);
    }
  }
}
