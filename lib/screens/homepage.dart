import 'package:flutter/material.dart';
import 'package:light_dark_mode_demo/main.dart';
import 'package:light_dark_mode_demo/provider/theme_provider.dart';
import 'package:light_dark_mode_demo/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? "Dark"
        : "Light";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(MyApp.title),
        actions: [ChangeThemeWidget()],
      ),
      body: Center(
        child: Text(
          "Hello $text",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
