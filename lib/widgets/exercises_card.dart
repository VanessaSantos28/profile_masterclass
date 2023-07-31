import 'package:flutter/material.dart';

import '../shared/contants.dart';

class ExercisesCard extends StatelessWidget {
  const ExercisesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      color: kCardColor,
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
              decoration: const BoxDecoration(
                  color: kPrimaryColor, shape: BoxShape.circle),
              child: const Center(
                child: Text(
                  "1",
                  style: kHeadline2Text,
                ),
              ),
            ),
            const Text(
              "Exercícios 01",
              style: kHeadline2Text,
            )
          ],
        ),
      ),
    );
  }
}
