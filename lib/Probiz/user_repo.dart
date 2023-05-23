import 'package:shared_preferences/shared_preferences.dart';

class AppDataService {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  static String email = '';
  static String password = '';
  static String photoURL = '';
  static String name = '';
  static String displayNAME = '';
  static String token = '';
  static String userType = '';

  final String _emailKey = 'email';
  final String _passwordKey = 'password';
  final String _photoURLKey = 'photoURL';
  final String _displayNAMEKey = 'displayNAME';
  final String _nameKey = 'name';
  final String _userAccessTokenKey = 'token';
  final String _userTypeKey = 'userTypeKey';

  AppDataService() {
    getUserData();
  }

  void getUserData() async {
    final SharedPreferences prefs = await _prefs;
    email = prefs.getString(_emailKey) ?? "email";
    password = (prefs.getString(_passwordKey) ?? "password");
    name = (prefs.getString(_nameKey) ?? "name");
    token = (prefs.getString(_userAccessTokenKey) ?? "token");
    userType = (prefs.getString(_userTypeKey) ?? "new");
    photoURL = (prefs.getString(_photoURLKey) ?? "new");
    displayNAME = (prefs.getString(_displayNAMEKey) ?? "new");
  }

  //
  // Future<void> setUserType(String email) async {
  //   final SharedPreferences prefs = await _prefs;
  //   await prefs.setString(email, _emailKey);
  //   getUserData();
  // }

  Future<void> setUserEmail(String mail) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString(_emailKey, mail);
    getUserData();
  }

  Future<void> setUserPhoto(String photo) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString(_photoURLKey, photo);
    getUserData();
  }

  Future<void> setUserName(String name) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString(_displayNAMEKey, name);
    getUserData();
  }

  Future<void> setUserDetails(String state) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString(state, _userTypeKey);
    getUserData();
  }
}
