import 'package:flutter/material.dart';
import '../../widgets/exercises_card.dart';
import '../../widgets/mood_button.dart';

class AnimationsPage extends StatelessWidget {
  const AnimationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Animações",
                    style: Theme.of(context).textTheme.displayLarge),
                Text("Flutterando Masterclass",
                    style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),
            const MoodButton(),
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
