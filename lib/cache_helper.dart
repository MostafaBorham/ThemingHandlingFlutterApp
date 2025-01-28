import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:handling_theming_flutter_app/theme_extension.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CacheHelper {
  static SharedPreferences? _preferences;
  static FlutterSecureStorage? _secureStorage;
  static const String _appModeKey = 'appModeKey';
  ///////////////////////////////////////////////////////////////////
  static Future<void> init() async {
    _preferences ??= await SharedPreferences.getInstance();
    _secureStorage = FlutterSecureStorage(aOptions: const AndroidOptions(
      encryptedSharedPreferences: true,
    ));
  }

/////////////////////////////////////////////////////////////////////
  static Future saveAppMode({required ThemeMode mode}) async {
    var modeValue = mode.name.toString();
    return await _secureStorage?.write(
        key: _appModeKey, value: modeValue);
  }

  static Future<ThemeMode> getAppMode() async {
    var modeJson = await _secureStorage?.read(key: _appModeKey) ?? '';
    return modeJson.getThemeMode();
  }
}
