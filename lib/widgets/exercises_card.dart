import 'package:flutter/material.dart';

class ExercisesCard extends StatelessWidget {
  const ExercisesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      color: Theme.of(context).cardColor,
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 33,
              width: 33,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  shape: BoxShape.circle),
              child: Center(
                child: Text(
                  "1",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
            Text(
              "Exercícios 01",
              style: Theme.of(context).textTheme.displayMedium,
            )
          ],
        ),
      ),
    );
  }
}
