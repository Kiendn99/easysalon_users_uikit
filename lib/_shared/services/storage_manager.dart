import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageManager {
  static initListener() async{ 
    saveData('local','default');
  }
  static void saveData(String key, dynamic value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value is int) {
      prefs.setInt(key, value);
    } else if (value is String) {
      prefs.setString(key, value);
    } else if (value is bool) {
      prefs.setBool(key, value);
    } else {
      debugPrint("Invalid Type");
    }
  }

  static Future<dynamic> readData(String key) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      dynamic obj = prefs.get(key);
      return obj;
    } on TypeError catch (_) {
      return;
    }
  }

  static Future<bool> deleteData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }
}
