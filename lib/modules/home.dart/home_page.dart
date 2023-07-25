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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CardActivities(
              title: "Animações",
              description:
                  "Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos",
              numberExercises: 4,
              imageCardTitle: "assets/images/Icon-running.png",
            ),
            CardActivities(
              title: "Leitura de Mockup",
              description:
                  "Aplicação da técnica de leitura de mockup, contendo 2 exercícios",
              numberExercises: 2,
              imageCardTitle: 'assets/images/Icon-glasses.png',
            ),
            CardActivities(
              title: "Playground",
              description: "Ambiente destinado a testes e estudos em geral",
              numberExercises: 3,
              imageCardTitle: 'assets/images/Icon-toys.png',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 80,
            child: Column(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      "assets/images/Icon-target.png",
                      scale: 2.2,
                    )),
                const Text("Atividades")
              ],
            ),
          ),
          Container(
            height: 46,
            width: .2,
            color: Colors.white,
          ),
          SizedBox(
            height: 80,
            child: Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Image.asset(
                    "assets/images/github.png",
                    scale: 9,
                    color: const Color(0XFFEDF4F8),
                  ),
                ),
                const Text("Repositórios")
              ],
            ),
          ),
          Container(
            height: 46,
            width: .2,
            color: Colors.white,
          ),
          SizedBox(
            height: 80,
            child: Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person,
                      color: Color(0XFFEDF4F8),
                      size: 28,
                    )),
                const Text("Repositórios")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
