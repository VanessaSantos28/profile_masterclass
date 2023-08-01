import 'package:flutter/material.dart';

import '../../shared/contants.dart';

import '../../widgets/exercises_card.dart';

class AnimationsPage extends StatelessWidget {
  const AnimationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Animações", style: kHeadline1Text),
                Text("Flutterando Masterclass", style: kBodyText),
              ],
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
      ),
      body: const Column(
        children: [
          ExercisesCard(),
          ExercisesCard(),
          ExercisesCard(),
        ],
      ),
    );
  }
}
