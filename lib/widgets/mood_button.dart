import 'package:flutter/material.dart';

import '../controller/theme_controller.dart';
import '../shared/contants.dart';

class MoodButton extends StatefulWidget {
  const MoodButton({super.key});

  @override
  State<MoodButton> createState() => _MoodButtonState();
}

IconData iconLight = Icons.sunny;

class _MoodButtonState extends State<MoodButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.dark_mode,
        color: kHighlightColor,
        size: 35,
      ),
      onPressed: () {},
    );
  }
}
