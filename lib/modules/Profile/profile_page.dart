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
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(
          appBarTitle: 'Sobre o dev',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PerfilCard(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Tecnologias Favoritas",
                style: TextStyle(
                  fontSize: 14,
                  color: kHighlightColor,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              FavoriteTechnologies(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Habilidades e Compentências",
                style: TextStyle(
                  fontSize: 14,
                  color: kHighlightColor,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ProfileHabilities(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomButton(),
    );
  }
}
