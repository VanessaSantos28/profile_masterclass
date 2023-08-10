import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/shared/app_images.dart';
import 'package:masterclass_app_exercicios/shared/contants.dart';

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
      backgroundColor: kBackgroundColor,
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
              Text(appBarTitle, style: kHeadline1Text),
              const Text("Flutterando Masterclass", style: kBodyText),
            ],
          ),
          const SizedBox(
            width: 80,
          ),
          MoodButton(),
        ],
      ),
    );
  }
}
