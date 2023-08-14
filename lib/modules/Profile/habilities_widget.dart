import 'package:flutter/material.dart';

import '../../shared/contants.dart';

class ProfileHabilities extends StatelessWidget {
  final String techName;
  final double containerSizer;
  const ProfileHabilities(
      {super.key, required this.techName, required this.containerSizer});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          techName,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Stack(
          children: [
            Container(
              height: 9,
              width: 255,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiary,
                  borderRadius: BorderRadius.circular(8)),
            ),
            Container(
              height: 9,
              width: containerSizer,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
