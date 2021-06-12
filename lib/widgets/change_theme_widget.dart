import 'package:flutter/material.dart';
import 'package:light_dark_mode_demo/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ChangeThemeWidget extends StatefulWidget {
  @override
  _ChangeThemeWidgetState createState() => _ChangeThemeWidgetState();
}

class _ChangeThemeWidgetState extends State<ChangeThemeWidget> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
        value: themeProvider.isDarkMode,
        onChanged: (value) {
          final provider = Provider.of<ThemeProvider>(context, listen: false);
          provider.toggleTheme(value);
        });
  }
}
