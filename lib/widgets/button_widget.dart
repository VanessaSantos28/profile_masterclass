import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/shared/app_images.dart';

class Button extends StatelessWidget {
  final String iconImage;
  final String title;
  final double imageSize;

  const Button(
      {super.key,
      required this.iconImage,
      required this.title,
      required this.imageSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {
              if (iconImage == AppImages.target) {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("/homePage", (route) => false);
              } else if (iconImage == AppImages.github) {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    "/repositoryPage", (route) => false);
              } else {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("/profilePage", (route) => false);
              }
            },
            child: Image.asset(
              iconImage,
              scale: imageSize,
              color: Theme.of(context).colorScheme.secondary,
            )),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
