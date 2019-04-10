import 'package:flutter/material.dart';
import 'splash_screen.dart';

main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ngampooz User",
      theme: ThemeData(fontFamily: 'Inter'),
      home: Splash(),
    );
  }
}