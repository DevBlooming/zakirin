import 'package:flutter/material.dart';
import 'package:zakirin/core/utils/app_router.dart';
import 'package:zakirin/core/utils/constants.dart';
import 'package:zakirin/core/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: Constants.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Styles.primaryColor,
          brightness: Brightness.dark,
        ),
        fontFamily: Styles.fontAlmarai,
        scaffoldBackgroundColor: Styles.primaryColor,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
