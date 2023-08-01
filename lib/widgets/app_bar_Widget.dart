import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/shared/app_images.dart';
import 'package:masterclass_app_exercicios/shared/contants.dart';

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
          IconButton(
            icon: const Icon(
              Icons.dark_mode,
              color: kHighlightColor,
              size: 35,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
