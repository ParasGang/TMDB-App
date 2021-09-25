import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:shirish_test_task/configurations/sizeconfig.dart';
import 'package:shirish_test_task/view/core/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return FlutterSwitch(
      value: themeProvider.isDarkMode,
      onToggle: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
      inactiveColor: Colors.grey.withAlpha(100),
      activeColor: CupertinoColors.activeGreen,
      height: 30.vertical(),
      width: 50.horizontal(),
    ).paddingRight(15);
  }
}
