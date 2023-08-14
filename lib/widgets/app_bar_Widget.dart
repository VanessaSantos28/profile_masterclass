import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/controller/theme_controller.dart';
import 'package:masterclass_app_exercicios/shared/app_images.dart';
import 'package:masterclass_app_exercicios/shared/contants.dart';
import 'package:masterclass_app_exercicios/shared/theme/dark/dark_colors.dart';

import 'mood_button.dart';

class AppBarWidget extends StatelessWidget {
  final String appBarTitle;

  const AppBarWidget({
    super.key,
    required this.appBarTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AppImages.logo,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(appBarTitle,
                  style: Theme.of(context).textTheme.displayLarge),
              Text("Flutterando Masterclass",
                  style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(
            width: 80,
          ),
          const MoodButton(),
        ],
      ),
    );
  }
}
