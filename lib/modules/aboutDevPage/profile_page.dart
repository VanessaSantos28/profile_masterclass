import 'package:flutter/material.dart';

import '../../shared/contants.dart';
import '../../widgets/app_bar_Widget.dart';
import '../../widgets/perfil_card.dart';
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
      body: Column(
        children: [
          PerfilCard(),
          FavoriteTechnologies(),
        ],
      ),
    );
  }
}
