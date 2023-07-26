import 'package:flutter/material.dart';

class ExercisesCard extends StatelessWidget {
  const ExercisesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      color: const Color(0xff172026),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            Container(
              height: 33,
              width: 33,
              decoration: const BoxDecoration(
                  color: Color(0XFF055aa3), shape: BoxShape.circle),
              child: const Center(
                child: Text("1"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}