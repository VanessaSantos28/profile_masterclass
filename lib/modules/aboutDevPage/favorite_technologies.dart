import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/shared/contants.dart';

class FavoriteTechnologies extends StatelessWidget {
  const FavoriteTechnologies({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Card(
            color: kBackgroundColor,
            child: Container(
              height: 110,
              width: 100,
              decoration: BoxDecoration(
                  color: kCardColor, borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}
