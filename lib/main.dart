import 'package:dating_app_clone/pages/onboarding_page.dart';
import 'package:dating_app_clone/theme/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: white,
        appBarTheme: AppBarTheme(
          color: white,
          elevation: 0
        ),
      ),
      home: const OnBoardingPage()
    );
  }
}