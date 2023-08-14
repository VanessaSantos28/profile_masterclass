import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/controller/theme_controller.dart';

class MoodButton extends StatefulWidget {
  const MoodButton({super.key});

  @override
  State<MoodButton> createState() => _MoodButtonState();
}

class _MoodButtonState extends State<MoodButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.dark_mode,
        color: Theme.of(context).colorScheme.secondary,
        size: 35,
      ),
      onPressed: () {
        AppTheme.instance.toggleTheme();
      },
    );
  }
}
