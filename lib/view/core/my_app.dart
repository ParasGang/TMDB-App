import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shirish_test_task/view/core/theme/theme_provider.dart';
import 'package:shirish_test_task/view/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themProvider, _) {
      final themeProvider = Provider.of<ThemeProvider>(context);
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: themeProvider.themeMode,
        theme: MyTheme.lightTheme,
        darkTheme: MyTheme.darkTheme,
        home: HomePage(),
      );
    });
  }
}
