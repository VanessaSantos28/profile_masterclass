import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/modules/Profile/profile_habilities.dart';

import '../../shared/contants.dart';
import '../../widgets/app_bar_Widget.dart';

import '../../widgets/bottom_button.dart';
import 'perfil_card.dart';
import 'favorite_technologies.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(
          appBarTitle: 'Sobre o dev',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PerfilCard(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Tecnologias Favoritas",
                style: TextStyle(
                  fontSize: 14,
                  color: kHighlightColor,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const FavoriteTechnologies(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Habilidades e Compentências",
                style: TextStyle(
                  fontSize: 14,
                  color: kHighlightColor,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 181,
                width: 400,
                child: Card(
                  color: kCardColor,
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                      decoration: BoxDecoration(
                        color: kCardColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ProfileHabilities(
                            techName: 'Dart/Flutter',
                            containerSizer: 220,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ProfileHabilities(
                            techName: 'React',
                            containerSizer: 120,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ProfileHabilities(
                            techName: 'Javascript',
                            containerSizer: 186,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ProfileHabilities(
                            techName: 'HTML',
                            containerSizer: 174,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ProfileHabilities(
                            techName: 'CSS',
                            containerSizer: 200,
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomButton(),
    );
  }
}
// SizedBox(
//       height: 181,
//       width: 400,
//       child: Card(
//         color: kCardColor,
//         child: Container(
//           padding: const EdgeInsets.only(top: 20),
//           decoration: BoxDecoration(
//             color: kCardColor,
//             borderRadius: BorderRadius.circular(30),
//           ),