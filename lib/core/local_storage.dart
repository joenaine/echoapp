import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  LocalStorage._internal();
  static final LocalStorage _instance = LocalStorage._internal();

  static LocalStorage get instance => _instance;

  Future<void> add(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<String?> get(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  Future<void> delete(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  Future<void> deleteAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
