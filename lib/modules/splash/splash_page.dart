import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Image.asset(
      'assets/images/masterclass_logo.png',
      scale: 1.8,
    ));
  }
}
