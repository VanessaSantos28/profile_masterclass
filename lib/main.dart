import 'package:flutter/material.dart';

import 'modules/aboutDevPage/about_dev_page.dart';
import 'modules/animations/animations_page.dart';
import 'modules/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xff121517)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0XFF055aa3),
              foregroundColor: Colors.white),
        ),
        textTheme: const TextTheme(
            displayLarge: TextStyle(
          fontFamily: "Poppins-Medium",
        )),
        useMaterial3: true,
      ),
      home: const AboutDevPage(),
    );
  }
}
