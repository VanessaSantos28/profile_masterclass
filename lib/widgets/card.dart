import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/shared/app_images.dart';
import 'package:masterclass_app_exercicios/shared/contants.dart';

import '../modules/animations/animations_page.dart';

class CardActivities extends StatelessWidget {
  final String title;
  final String description;
  final int numberExercises;
  final String imageCardTitle;
  const CardActivities(
      {super.key,
      required this.title,
      required this.description,
      required this.numberExercises,
      required this.imageCardTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Theme.of(context).cardColor,
        child: Container(
          padding: const EdgeInsets.all(8),
          width: 400,
          height: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    width: 43,
                    height: 43,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Image.asset(imageCardTitle),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: kHeadline2Text,
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Text.rich(
                    TextSpan(
                        text: "Exercícios: ",
                        style: kDescriptionText,
                        children: <TextSpan>[
                          TextSpan(
                              text: numberExercises.toString(),
                              style: const TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: kHighlightColor))
                        ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 37,
              ),
              Text(
                description,
                style: const TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 14,
                    color: kDescriptionColor),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Image.asset(
                      AppImages.github,
                      color: kHighlightColor,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Acessar código fonte",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Montserrat",
                        color: kHighlightColor),
                  ),
                  const SizedBox(
                    width: 78,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/animationPage");
                    },
                    child: const Text(
                      "Ver mais",
                      style: TextStyle(
                        fontSize: 12,
                        color: kHighlightColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
