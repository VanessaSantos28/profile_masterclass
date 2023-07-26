import 'package:flutter/material.dart';

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
        color: const Color(0xFF172026),
        child: Container(
          padding: const EdgeInsets.all(8),
          width: 400,
          height: 220,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    width: 43,
                    height: 43,
                    decoration: BoxDecoration(
                        color: const Color(0XFF055aa3),
                        borderRadius: BorderRadius.circular(30)),
                    child: Image.asset(imageCardTitle),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xffEDF4F8),
                      fontFamily: "Poppins",
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Text.rich(
                    TextSpan(
                        text: "Exercícios: ",
                        style: const TextStyle(
                            fontFamily: "Montserrat",
                            color: Color(0xFF51565a),
                            fontSize: 12),
                        children: <TextSpan>[
                          TextSpan(
                              text: numberExercises.toString(),
                              style: const TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color(0xffEDF4F8)))
                        ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 37,
              ),
              Text(
                description,
                style: const TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 14,
                    color: Color(0xFF51565a)),
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
                      "assets/images/github.png",
                      color: Color(0xffEDF4F8),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Acessar código fonte",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Montserrat",
                        color: Color(0xffEDF4F8)),
                  ),
                  const SizedBox(
                    width: 78,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Ver mais",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
