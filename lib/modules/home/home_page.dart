import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/ui/contants.dart';
import 'package:masterclass_app_exercicios/widgets/bottom_button.dart';
import 'package:masterclass_app_exercicios/widgets/card.dart';

import '../../widgets/app_bar_Widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121517),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(appBarTitle: "Animações"),
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
          const BottomButton(
              buttonTitle: "Atividades",
              buttonImage: "assets/images/Icon-target.png"),
          Container(
            height: 46,
            width: .2,
            color: kHighlightColor,
          ),
          const BottomButton(
              buttonTitle: "Repositórios",
              buttonImage: "assets/images/github.png",
              imageSize: 7),
          Container(
            height: 46,
            width: .2,
            color: Colors.white,
          ),
          const BottomButton(
            buttonTitle: "Sobre dev",
            buttonImage: "assets/images/person.png",
            imageSize: 7,
          )
        ],
      ),
    );
  }
}
