import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

const themeStorageKey = "darkTheme";

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  Future<void> getTheme(SharedPreferences _prefs) async {
    try {
      bool isDarkMode = _prefs.getBool(themeStorageKey);

      themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
      notifyListeners();
    } catch (_) {}
  }

  void toggleTheme(bool isOn) async {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      _prefs.setBool(themeStorageKey, isOn);
    } catch (_) {}
  }
}

class MyTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff111111),
    shadowColor: Color(0xffffffff).withOpacity(0.4),
    hintColor: Color(0xff000000),
    cardColor: Color(0xff505050),
    focusColor: Color(0xffcccccc),
    colorScheme: ColorScheme.dark(),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    shadowColor: Color(0xff000000),
    hintColor: Color(0xffffffff),
    cardColor: Color(0xffE2E1E1),
    focusColor: Color(0xff000000),
    colorScheme: ColorScheme.light(),
  );
}
