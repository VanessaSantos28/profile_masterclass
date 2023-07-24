import 'package:flutter/material.dart';

class CardActivities extends StatelessWidget {
  final String title;
  final String description;
  final int numberExercises;
  const CardActivities(
      {super.key,
      required this.title,
      required this.description,
      required this.numberExercises});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: const Color.fromARGB(255, 30, 30, 31),
        child: Container(
          padding: const EdgeInsets.all(12),
          width: 400,
          height: 220,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  const Text(
                    "Exercícios: ",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        color: Color(0xFF51565a),
                        fontSize: 12),
                  ),
                  Text(numberExercises.toString(),
                      style: TextStyle(fontFamily: "Montserrat", fontSize: 12))
                ],
              ),
              const SizedBox(
                height: 37,
              ),
              Text(
                description,
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 14,
                    color: Color(0xFF51565a)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
