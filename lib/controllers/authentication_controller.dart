import 'dart:convert';
import '../storage/secure_storage.dart';
import '../models/data_models.dart';

User user = const User();

class AuthenticationController {
  /// save user object in localStorage
  static login(LoginResponse object) async {
    if (object.user != null) await saveUser(object.user!);
    if (object.token != null) await saveToken(object.token!);
  }

  static Future<void> saveUser(User object) async {
    user = object;
    await SecureStorage.write(key: 'user', value: json.encode(user.toJson()));
  }

  /// get User which saved in localStorage.
  ///
  /// and save it in global variable, no need to use async/await when you need to localUser.
  static Future<User> getUser() async {
    final userObject = await SecureStorage.read(key: 'user');
    user = User.fromJson(json.decode(userObject ?? '{}'));
    return user;
  }

  /// save jwt token in localStorage
  static Future<void> saveToken(String token) async {
    await SecureStorage.write(key: 'token', value: token);
  }

  /// get jwt token from localStorage
  static Future<String> token() async {
    return await SecureStorage.read(key: 'token') ?? '';
  }

  /// return `true` if User object exists in localStorage
  static Future<bool> loggedIn() async {
    final object = await getUser();
    return object.id != null;
  }

  /// Clear localStorage and local-Database
  static logOut() async {
    await SecureStorage.deleteAll();
  }
}
