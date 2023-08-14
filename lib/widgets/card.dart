import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/shared/app_images.dart';

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
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(30)),
                    child: Image.asset(imageCardTitle),
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Text.rich(
                    TextSpan(
                        text: "Exercícios: ",
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: <TextSpan>[
                          TextSpan(
                            text: numberExercises.toString(),
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 37,
              ),
              Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium,
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
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Acessar código fonte",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    width: 85,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/animationPage");
                      },
                      child: const Text(
                        "Ver mais",
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
