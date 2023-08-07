import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masterclass_app_exercicios/modules/home/home_page.dart';

import 'package:masterclass_app_exercicios/shared/contants.dart';

import 'modules/splash/splash_page.dart';

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
        iconButtonTheme: const IconButtonThemeData(
            style: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(kHighlightColor))),
        appBarTheme: const AppBarTheme(color: kBackgroundColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor, foregroundColor: Colors.white),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/homePage': (_) => HomePage(),
      },
    );
  }
}
