import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

import '../../config/app_configs.dart';
import '../models/base.dart';

class LocalStorageUtils<M extends BaseModel> {
  static write(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static Future<String?> read(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  static delete(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }

  static saveList<T extends BaseModel>(String key, T value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var data = json.encode(value.toJson());
    var list = await readList(key) ?? [];

    prefs.setStringList(key, [...list, data]);
  }

  static Future<List<String>?> readList(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key);
  }

  static saveObject<T extends BaseModel>(String key, T value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var data = json.encode(value.toJson());
    prefs.setString(key, data);
  }

  static Future<dynamic> readObject<T extends BaseModel>(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var prefData = prefs.getString(key);
    if (prefData != null) {
      var data = json.decode(prefData);
      return data;
    }
    return null;
  }

  static Future<dynamic> readListObject<T extends BaseModel>(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var prefData = prefs.getStringList(key);
    if (prefData != null) {
      var data = prefData.map((e) => json.decode(e)).toList();
      return data;
    }
    return null;
  }
}

class UserTokenManager {
  static Future<String?> getAccessToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(AppConstants.userToken);
      debugPrint('Getting token from storage: $token');
      return token;
    } catch (e) {
      debugPrint('Error getting token: $e');
      return null;
    }
  }

  static Future<void> deleteAccessToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(AppConstants.userToken);
      debugPrint('Token deleted from storage');
    } catch (e) {
      debugPrint('Error deleting token: $e');
    }
  }

  static Future<String> insertAccessToken(String token) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(AppConstants.userToken, token);
      debugPrint('Token inserted to storage: $token');
      return token;
    } catch (e) {
      debugPrint('Error inserting token: $e');
      rethrow;
    }
  }

  // Helper method to check if token exists
  static Future<bool> hasToken() async {
    final token = await getAccessToken();
    return token != null && token.isNotEmpty;
  }

  // static Future<String> insertEmail(String email) async {
  //   var storage = const FlutterSecureStorage();
  //   await storage.write(key: AppConstants.email, value: email);
  //   return email;
  // }

  // static Future<String> insertPassword(String password) async {
  //   var storage = const FlutterSecureStorage();
  //   await storage.write(key: AppConstants.password, value: password);
  //   return password;
  // }

  // static Future<String?> getEmail() async {
  //   var storage = const FlutterSecureStorage();
  //   var email = await storage.read(key: AppConstants.email);
  //   return email;
  // }

  // static Future<String?> getPassword() async {
  //   var storage = const FlutterSecureStorage();
  //   var password = await storage.read(key: AppConstants.password);
  //   return password;
  // }
}
