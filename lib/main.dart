import 'package:flutter/material.dart';
import 'package:zakirin/constants/constants.dart';
import 'package:zakirin/pages/home_page.dart';
import 'package:zakirin/theme/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        fontFamily: Constants.fontAlmarai,
        scaffoldBackgroundColor: Palette.backgroundColor,
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
