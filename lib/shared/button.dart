import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/shared/app_images.dart';

import '../modules/Profile/profile_page.dart';
import '../modules/RepositoryPage/repository_page.dart';
import '../modules/home/home_page.dart';

import 'contants.dart';

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
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                    (route) => false);
              } else if (iconImage == AppImages.githubIcon) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RepositoryPage()),
                    (route) => false);
              } else {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
                    (route) => false);
              }
            },
            child: Image.asset(
              iconImage,
              scale: imageSize,
              color: kHighlightColor,
            )),
        Text(
          title,
          style: const TextStyle(
              color: kHighlightColor, fontSize: 12, fontFamily: "Montserrat"),
        ),
      ],
    );
  }
}
