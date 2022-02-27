import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  static const String accessToken = "accessToken";
  static const String refreshToken = "refreshToken";

  final SharedPreferences preferences;

  SharedPreferenceHelper({required this.preferences});

  Future<void> setUserTokens(
      {required String userAccessToken,
      required String userRefreshToken}) async {
    await preferences.setString(accessToken, userAccessToken);
    await preferences.setString(refreshToken, userAccessToken);
  }

  String? getAccessToken() {
    final userAccessToken = preferences.getString(accessToken);
    return userAccessToken;
  }

  String? getRefreshToken() {
    final userRefreshToken = preferences.getString(refreshToken);
    return userRefreshToken;
  }
}
