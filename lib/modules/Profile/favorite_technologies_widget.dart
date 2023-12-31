import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/shared/app_images.dart';

class FavoriteTechnologies extends StatelessWidget {
  const FavoriteTechnologies({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  width: 94,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        AppImages.flutterIcon,
                        scale: 2.1,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      Text(
                        "Flutter",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                );
              },
              itemCount: 7,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 10,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
