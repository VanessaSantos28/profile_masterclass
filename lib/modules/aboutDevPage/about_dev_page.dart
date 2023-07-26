import 'package:flutter/material.dart';

import '../../ui/contants.dart';
import '../../widgets/app_bar_Widget.dart';
import '../../widgets/perfil_card.dart';

class AboutDevPage extends StatelessWidget {
  const AboutDevPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(
          appBarTitle: 'Sobre Dev',
        ),
      ),
      body: PerfilCard(),
    );
  }
}
