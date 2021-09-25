import 'package:flutter/material.dart';
import 'package:shirish_test_task/view/core/my_app.dart';
import 'package:shirish_test_task/view/core/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences _prefs = await SharedPreferences.getInstance();
  final configApp = ChangeNotifierProvider(
    create: (context) => ThemeProvider()..getTheme(_prefs),
    child: MyApp(),
  );

  runApp(configApp);
}
