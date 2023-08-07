import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/shared/contants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1))
        .then((_) => Navigator.of(context).pushReplacementNamed('/homePage'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: kBackgroundColor,
        child: Center(
          child: Image.asset(
            'assets/images/masterclass_logo.png',
            scale: 2,
          ),
        ));
  }
}
