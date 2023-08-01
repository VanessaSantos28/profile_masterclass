import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/shared/app_images.dart';

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
        child: AppBarWidget(appBarTitle: "Atividades"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardActivities(
              title: "Animações",
              description:
                  "Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos",
              numberExercises: 4,
              imageCardTitle: AppImages.running,
            ),
            CardActivities(
              title: "Leitura de Mockup",
              description:
                  "Aplicação da técnica de leitura de mockup, contendo 2 exercícios",
              numberExercises: 2,
              imageCardTitle: AppImages.glassesIcon,
            ),
            CardActivities(
              title: "Playground",
              description: "Ambiente destinado a testes e estudos em geral",
              numberExercises: 3,
              imageCardTitle: AppImages.toys,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomButton(),
    );
  }
}
