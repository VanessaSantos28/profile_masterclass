import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/controller/theme_controller.dart';
import 'package:masterclass_app_exercicios/modules/Profile/profile_page.dart';
import 'package:masterclass_app_exercicios/modules/RepositoryPage/repository_page.dart';
import 'package:masterclass_app_exercicios/modules/animations/animations_page.dart';
import 'package:masterclass_app_exercicios/modules/home/home_page.dart';

import 'modules/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    AppTheme.instance.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.instance.light,
      darkTheme: AppTheme.instance.dark,
      themeMode: AppTheme.instance.getCurrentThemeMode,
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/homePage': (_) => HomePage(),
        '/repositoryPage': (_) => const RepositoryPage(),
        '/animationPage': (_) => const AnimationsPage(),
        '/profilePage': (_) => const ProfilePage(),
      },
    );
  }
}
