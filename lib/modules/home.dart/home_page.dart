import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/widgets/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/images/logo.png",
            ),
            const SizedBox(
              width: 10,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Atividades',
                  style: TextStyle(
                    color: Color(0XFFEDF4F8),
                    fontFamily: "Poppins",
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Flutterando Masterclass",
                  style: TextStyle(
                    color: Color(0XFFEDF4F8),
                    fontFamily: "Poppins-Medium",
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: const Column(
        children: [
          CardActivities(
            title: "Animações",
            description:
                "Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos",
            numberExercises: 4,
          ),
          CardActivities(
            title: "Leitura de Mockup",
            description:
                "Aplicação da técnica de leitura de mockup, contendo 2 exercícios",
            numberExercises: 2,
          ),
        ],
      ),
    );
  }
}
