import 'package:flutter/material.dart';
import 'package:infotrilhas/src/models/colors.dart';
import 'package:infotrilhas/src/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          primary: PRIMARY_COLOR,
          seedColor: PRIMARY_COLOR,
          secondary: SECODARY_COLOR,
        ),
        scaffoldBackgroundColor: const Color(0xFFEDFEFF),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: SECODARY_COLOR,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
